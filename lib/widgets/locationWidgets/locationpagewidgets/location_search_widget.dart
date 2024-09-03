// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

import '../../../classes/constants.dart';
import 'location_list_widget.dart';

class LocationSearchWidget extends StatefulWidget {
  final void Function(String, String) onCitySelected;

  const LocationSearchWidget({super.key, required this.onCitySelected});

  @override
  _LocationSearchWidgetState createState() => _LocationSearchWidgetState();
}

class _LocationSearchWidgetState extends State<LocationSearchWidget> {
  List<Map<String, dynamic>> _selectedLocations = [];
  bool _isLoading = false;
  final TextEditingController _searchController = TextEditingController();

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

  void _onSearchTextChanged(String value) {
    if (value.isNotEmpty) {
      searchLocation(value);
    } else {
      setState(() {
        _selectedLocations = [];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              labelText: 'Şehir Ara',
              labelStyle: TextStyle(color: Colors.white),
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: _onSearchTextChanged,
          ),
        ),
        if (_isLoading)
          const CircularProgressIndicator()
        else
          Expanded(
            child: ListView.builder(
              itemCount: _selectedLocations.length,
              itemBuilder: (context, index) {
                final location = _selectedLocations[index];
                return LocationListTile(
                  location: location,
                  selectedCity: null, 
                  onTap: widget.onCitySelected,
                );
              },
            ),
          ),
      ],
    );
  }
}
