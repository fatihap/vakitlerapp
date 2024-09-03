import 'package:flutter/material.dart';
import 'package:namazvakitleri/fragments/homepage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart' as xml;

class LocationSelectionPage extends StatefulWidget {
  final List<xml.XmlElement> cityElements;
  final void Function(String cityID, String cityName) onCitySelected;

  const LocationSelectionPage({
    super.key,
    required this.cityElements,
    required this.onCitySelected,
  });

  @override
  _LocationSelectionPageState createState() => _LocationSelectionPageState();
}

class _LocationSelectionPageState extends State<LocationSelectionPage> {
  List<Map<String, String>> _savedLocations = [];

  @override
  void initState() {
    super.initState();
    loadSavedLocations();
  }

  Future<void> saveLocation(Map<String, dynamic> location) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (!_savedLocations.any((savedLocation) => savedLocation['ID'] == location['ID'])) {
      setState(() {
        _savedLocations.add(location.cast<String, String>());
      });
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
        title: const Text(
          'Canlı Konum Seçimi',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.black,
      ),
      body: Container(
        color: Colors.black87,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
           
            const SizedBox(height: 16.0),
            Expanded(
              child: ListView.builder(
                itemCount: widget.cityElements.length,
                itemBuilder: (context, index) {
                  final element = widget.cityElements[index];
                  final cityID = _getElementText(element, 'ID');
                  final cityNameTR = _getElementText(element, 'CityNameTR');

                  if (cityID.isEmpty || cityNameTR.isEmpty) {
                    return const SizedBox.shrink();
                  }

                  return Card(
                    color: Colors.black45, 
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    elevation: 6, 
                    margin: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                      title: Text(
                        
                        cityNameTR,
                        style: const TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                      onTap: () {
                        Map<String, dynamic> selectedLocation = {
                          'ID': cityID,
                          'CityNameTR': cityNameTR,
                        };
                        widget.onCitySelected(cityID, cityNameTR);
                        saveLocation(selectedLocation);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainPage(
                              selectedCityId: cityID,
                              selectedCityName: cityNameTR,
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _getElementText(xml.XmlElement element, String tagName) {
    final tags = element.findElements(tagName);
    if (tags.isNotEmpty) {
      return tags.first.text.trim();
    }
    return '';
  }
}
