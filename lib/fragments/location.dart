import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart' as xml;
import 'package:get/get.dart';
import '../classes/constants.dart';
import '../widgets/locationWidgets/location_selection_page.dart';
import '../widgets/locationWidgets/select_location/select_city.dart';
import '../widgets/locationWidgets/select_location/select_country.dart';
import 'homepage.dart';

class LocationWidget extends StatefulWidget {
  final String defaultCityId;
  final String defaultCityName;
  final bool isFirstTouch;

  const LocationWidget({
    super.key,
    required this.defaultCityId,
    required this.defaultCityName,
    required this.isFirstTouch,
  });

  @override
  _LocationWidgetState createState() => _LocationWidgetState();
}

class _LocationWidgetState extends State<LocationWidget> {
  List<Map<String, dynamic>> _countryList = [];
  List<Map<String, dynamic>> _selectedLocations = [];
  List<Map<String, dynamic>> _savedLocations = [];
  Map<String, dynamic>? _selectedCity;
  bool _isLoading = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchCountries();
    loadSavedLocations();
    if (widget.isFirstTouch) {
      setFirstTouch();
      _onCitySelected(widget.defaultCityId, widget.defaultCityName, true);
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        SharedPreferences prefs = await SharedPreferences.getInstance();
        String? savedCityId = prefs.getString('selectedCityId');
        String? savedCityName = prefs.getString('selectedCityName');

        if (savedCityId != null && savedCityName != null) {
          _onCitySelected(savedCityId, savedCityName, false);
        } else {
          _onCitySelected(widget.defaultCityId, widget.defaultCityName, true);
        }
      });
    }
  }

  Future<void> setFirstTouch() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTouch', false);
  }

  Future<void> saveLocation(Map<String, dynamic> location) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!_savedLocations
        .any((savedLocation) => savedLocation['ID'] == location['ID'])) {
      _savedLocations.add(location);
      List<String> savedLocationsJson = _savedLocations
          .map((location) => location.entries
              .map((entry) => '${entry.key}=${entry.value}')
              .join('|'))
          .toList();
      await prefs.setStringList('savedLocations', savedLocationsJson);
    }

    await prefs.setString('selectedCityId', location['ID']);
    await prefs.setString('selectedCityName', location['CityNameTR']);
  }

  Future<void> loadSavedLocations() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedLocationsJson = prefs.getStringList('savedLocations');

    if (savedLocationsJson != null) {
      setState(() {
        _savedLocations = savedLocationsJson.map((json) {
          final Map<String, String> map = Map.fromEntries(
            json.split('|').map((entry) {
              final parts = entry.split('=');
              return MapEntry(parts[0], parts[1]);
            }),
          );
          return map;
        }).toList();
      });
    }
  }

  Future<void> searchCountries() async {
    final response = await http.get(Uri.parse(
      Constants.ulkeSecimUrl,
    ));

    final document = xml.XmlDocument.parse(response.body);
    final countryList = document.findAllElements('country');

    setState(() {
      _countryList = countryList.map((element) {
        return {
          'ID': element.findElements('ID').first.text,
          'CountryNameTR': element.findElements('countryNameTR').first.text
        };
      }).toList();
    });
  }

  Future<void> searchLocation(String query) async {
    setState(() {
      _isLoading = true;
    });

    final response = await http.get(Uri.parse(
      '${Constants.sehirAramaUrl}$query',
    ));

    final document = xml.XmlDocument.parse(response.body);
    final locations = document.findAllElements('city');

    setState(() {
      _selectedLocations = locations.map((element) {
        return {
          'ID': element.findElements('ID').first.text,
          'CityNameTR': element.findElements('NameTR').first.text,
          'CityStateTR': element.findElements('cityStateTR').first.text
        };
      }).toList();
      _isLoading = false;
    });
  }

  void _onCitySelected(String cityID, String cityName,
      [bool isInitial = false]) {
    setState(() {
      _selectedCity = {
        'ID': cityID,
        'CityNameTR': cityName,
      };
    });

    saveLocation(_selectedCity!);

    if (isInitial && cityID == widget.defaultCityId) {
      _confirmSelection();
    }
  }

  void _onCountrySelected(String countryID) {
    setState(() {
      _selectedCity = null;
    });
  }

  void _showCountrySelectionPage() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CountrySelectionPage(
          countryList: _countryList,
          onCountrySelected: (countryID) {
            _onCountrySelected(countryID);
          },
          showCitySelectionPage: _showCitySelectionPage,
        ),
      ),
    );
  }

  void _showCitySelectionPage(String countryID) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CitySelectionPage(
          onCitySelected: (cityID, cityName) {
            _onCitySelected(cityID, cityName);
          },
          countryID: countryID,
        ),
      ),
    );
  }

  void _onSearchTextChanged(String value) {
    if (value.isNotEmpty) {
      searchLocation(value);
    } else {
      setState(() {
        _selectedLocations = [];
      });
    }
  }

  void removeLocation(Map<String, dynamic> location) async {
    setState(() {
      _savedLocations.removeWhere(
          (savedLocation) => savedLocation['ID'] == location['ID']);
    });
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedLocationsJson = _savedLocations
        .map((location) => location.entries
            .map((entry) => '${entry.key}=${entry.value}')
            .join('|'))
        .toList();
    await prefs.setStringList('savedLocations', savedLocationsJson);
  }

  void showLoadingDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Container(
          padding: const EdgeInsets.all(20.0),
          height: 120.0, // Adjust the height as needed
          child:  Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          const    CircularProgressIndicator(),
            const  SizedBox(height: 16.0),
              Text(
                'location_searching'.tr,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _getLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return;
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return;
    }

    try {
      showLoadingDialog(context);

      final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      final response = await http.get(Uri.parse(
        'http://www.turktakvim.com/XMLservis.php?tip=konum&latitude=${position.latitude}&longitude=${position.longitude}&limit=10&radius=45&format=xml',
      ));

      if (response.statusCode == 200) {
        final document = xml.XmlDocument.parse(response.body);
        final cityElements = document.findAllElements('sehir').toList();

        Navigator.of(context).pop();

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationSelectionPage(
              cityElements: cityElements,
              onCitySelected: (cityID, cityName) {
                _onCitySelected(cityID, cityName);
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MainPage(
                      selectedCityId: cityID,
                      selectedCityName: cityName,
                    ),
                  ),
                );
              },
            ),
          ),
        );
      } else {
        Navigator.of(context).pop(); // Close the loading dialog
        // Handle the case when the response is not successful
      }
    } catch (e) {
      Navigator.of(context).pop(); // Close the loading dialog
      // Handle the exception
      print('Error fetching location: $e');
    }
  }

  void _confirmSelection() {
    if (_selectedCity != null &&
        _selectedCity!['ID'] != null &&
        _selectedCity!['CityNameTR'] != null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MainPage(
            selectedCityId: _selectedCity!['ID'],
            selectedCityName: _selectedCity!['CityNameTR'],
          ),
        ),
      );
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.black,
        title:  Text(
          'location_selection'.tr,
          style:const TextStyle(color: Colors.white, fontSize: 22),
        ),
        actions: [
          IconButton(
            onPressed: _showCountrySelectionPage,
            icon: const Icon(Icons.add, size: 35, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/world_location.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController,
                style: const TextStyle(color: Colors.white),
                onChanged: _onSearchTextChanged,
                decoration:  InputDecoration(
                  labelText: 'search_city'.tr,
                  labelStyle:const TextStyle(color: Colors.white, fontSize: 20),
                  prefixIcon:const  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  filled: true,
                  fillColor: Colors.black54,
                  border:const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  enabledBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                  focusedBorder:const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  ),
                ),
              ),
            ),
            Expanded(
              child: _isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                      itemCount: _selectedLocations.length,
                      itemBuilder: (context, index) {
                        final location = _selectedLocations[index];
                        final isSelected = _selectedCity != null &&
                            _selectedCity!['ID'] == location['ID'];
                        return Container(
                          color: isSelected
                              ? const Color.fromARGB(137, 66, 109, 190)
                              : Colors.transparent,
                          child: ListTile(
                            title: Text(
                              '${location['CityNameTR']}, ${location['CityStateTR']}',
                              style: TextStyle(
                                color: isSelected ? Colors.white : Colors.white,
                              ),
                            ),
                            onTap: () {
                              _onCitySelected(
                                  location['ID'], location['CityNameTR']);
                            },
                          ),
                        );
                      },
                    ),
            ),
            const Divider(
              color: Colors.white, 
              thickness: 2,
              indent: 16.0,
              endIndent: 16.0,
            ),
             Text(
              'kayitli_sehirler'.tr,
              style:const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: _savedLocations.length,
                itemBuilder: (context, index) {
                  final location = _savedLocations[index];
                  final isSelected = _selectedCity != null &&
                      _selectedCity!['ID'] == location['ID'];

                  return Container(
                    color: isSelected
                        ? const Color.fromARGB(255, 3, 3, 1)
                        : Colors.transparent,
                    child: ListTile(
                      title: Text(
                        location['CityNameTR'],
                        style: TextStyle(
                          color: isSelected
                              ? const Color.fromARGB(255, 183, 112, 107)
                              : Colors.white,
                          fontSize: 22,
                        ),
                      ),
                      trailing: IconButton(
                        icon: const Icon(
                          Icons.delete,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          removeLocation(location);
                        },
                      ),
                      onTap: () {
                        _onCitySelected(location['ID'], location['CityNameTR']);
                      },
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _confirmSelection,
                child:  Text(
                  'konum_onay'.tr,
                  style:const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getLocation,
        child: const Icon(Icons.my_location),
      ),
    );
  }
}
