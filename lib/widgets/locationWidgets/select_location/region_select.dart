import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:xml/xml.dart' as xml;

import '../../../fragments/homepage.dart';
import '../../../styles/textStyle.dart';

class RegionSelectionPage extends StatefulWidget {
  final String selectedCityId;
  final String selectedCityName;
  final String countryID;

  const RegionSelectionPage({
    super.key,
    required this.selectedCityId,
    required this.selectedCityName,
    required this.countryID,
  });

  @override
  _RegionSelectionPageState createState() => _RegionSelectionPageState();
}

class _RegionSelectionPageState extends State<RegionSelectionPage> {
  List<Map<String, dynamic>> _regionList = [];
  List<Map<String, dynamic>> _filteredRegionList = [];
  final TextEditingController _searchController = TextEditingController();
  List<Map<String, dynamic>> _savedLocations = [];

  @override
  void initState() {
    super.initState();
    _fetchRegions();
   // _loadSavedLocations();  // Load saved locations on init
  }

  Future<void> _fetchRegions() async {
    try {
      final response = await http.get(Uri.parse(
          'https://www.turktakvim.com/XMLservis.php?tip=sehir&countryID=${widget.countryID}&cityStateFilter=${widget.selectedCityId.toUpperCase()}'));

      final document = xml.XmlDocument.parse(response.body);
      final regionList = document.findAllElements('sehir');

      setState(() {
        _regionList = regionList.map((element) {
          return {
            'ID': element.findElements('ID').first.text,
            'RegionName': element.findElements('CityNameTR').first.text
          };
        }).toList();
        _filteredRegionList = _regionList;
      });
    } catch (e) {
      
    }
  }
/*
Future<void> saveLocation(Map<String, dynamic> location) async {
  try {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    
    // Load existing saved locations
    final savedLocationsJson = prefs.getStringList('savedLocations') ?? [];
    List<Map<String, dynamic>> savedLocations = savedLocationsJson.map((json) {
      final Map<String, String> map = Map.fromEntries(
        json.split('|').map((entry) {
          final parts = entry.split('=');
          return MapEntry(parts[0], parts[1]);
        }),
      );
      return map;
    }).toList();

    // Check if the location is already saved
    if (!savedLocations.any((savedLocation) => savedLocation['ID'] == location['ID'])) {
      savedLocations.add(location);
      List<String> savedLocationsJson = savedLocations
          .map((location) => location.entries
              .map((entry) => '${entry.key}=${entry.value}')
              .join('|'))
          .toList();
      await prefs.setStringList('savedLocations', savedLocationsJson);
    }

    await prefs.setString('selectedCityId', location['ID']);
    await prefs.setString('selectedCityName', location['RegionName']);
  } catch (e) {
    print('Error saving location: $e');
  }
}

  Future<void> _loadSavedLocations() async {
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
*/
  void _navigateToMainPage(String regionID, String regionName) async {
    final selectedRegion = {
      'ID': regionID,
      'RegionName': regionName
    };
  //  await saveLocation(selectedRegion);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainPage(
          selectedCityId: regionID,
          selectedCityName: regionName,
        ),
      ),
    );
  }

  void _filterRegions(String query) {
    setState(() {
      _filteredRegionList = _regionList.where((region) {
        final regionName = region['RegionName'].toLowerCase();
        return regionName.contains(query.toLowerCase());
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '${widget.selectedCityName} - Bölge Seç',
          style: TextStyles.labelStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterRegions,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Bölge Ara',
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.black54,
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredRegionList.length,
              itemBuilder: (BuildContext context, int index) {
                final region = _filteredRegionList[index];
                return ListTile(
                  title: Text(
                    region['RegionName'],
                    style: TextStyles.labelStyle.copyWith(color: Colors.white),
                  ),
                  onTap: () {
                    _navigateToMainPage(region['ID'], region['RegionName']);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class LocationManager {
  static Future<void> saveLocation(Map<String, dynamic> location) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> savedLocationsJson = prefs.getStringList('savedLocations') ?? [];

    List<Map<String, dynamic>> savedLocations = savedLocationsJson.map((json) {
      final Map<String, String> map = Map.fromEntries(
        json.split('|').map((entry) {
          final parts = entry.split('=');
          return MapEntry(parts[0], parts[1]);
        }),
      );
      return map;
    }).toList();

    if (!savedLocations.any((savedLocation) => savedLocation['ID'] == location['ID'])) {
      savedLocations.add(location);
      savedLocationsJson = savedLocations
          .map((location) => location.entries
              .map((entry) => '${entry.key}=${entry.value}')
              .join('|'))
          .toList();
      await prefs.setStringList('savedLocations', savedLocationsJson);
    }

    await prefs.setString('selectedCityId', location['ID']);
    await prefs.setString('selectedCityName', location['RegionName']);
  }

  static Future<List<Map<String, dynamic>>> loadSavedLocations() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedLocationsJson = prefs.getStringList('savedLocations');

    if (savedLocationsJson != null) {
      return savedLocationsJson.map((json) {
        final Map<String, String> map = Map.fromEntries(
          json.split('|').map((entry) {
            final parts = entry.split('=');
            return MapEntry(parts[0], parts[1]);
          }),
        );
        return map;
      }).toList();
    }
    return [];
  }
}
