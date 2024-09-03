import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:xml/xml.dart' as xml;

import '../../../classes/constants.dart';
import '../../../styles/textStyle.dart';
import 'region_select.dart';

class CitySelectionPage extends StatefulWidget {
  final Function(String, String) onCitySelected;
  final String countryID;

  const CitySelectionPage({
    super.key,
    required this.onCitySelected,
    required this.countryID,
  });

  @override
  _CitySelectionPageState createState() => _CitySelectionPageState();
}

class _CitySelectionPageState extends State<CitySelectionPage> {
  List<Map<String, dynamic>> _cityList = [];
  List<Map<String, dynamic>> _filteredCityList = [];
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _fetchCities();
  }

  Future<void> _fetchCities() async {
    final response = await http
        .get(Uri.parse('${Constants.selectCityUrl}=${widget.countryID}'));

    final document = xml.XmlDocument.parse(response.body);
    final cityList = document.findAllElements('eyalet');

    setState(() {
      _cityList = cityList.map((element) {
        return {
          'ID': element.findElements('cityStateFilter').first.text,
          'CityNameTR': element.findElements('cityStateTR').first.text
        };
      }).toList();
      _filteredCityList = _cityList;
    });
  }

  void _filterCities(String query) {
    setState(() {
      _filteredCityList = _cityList.where((city) {
        final cityName = city['CityNameTR'].toLowerCase();
        return cityName.contains(query.toLowerCase());
      }).toList();
    });
  }

  void _navigateToRegionSelection(String cityID, String cityName) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RegionSelectionPage(
          selectedCityId: cityID,
          selectedCityName: cityName,
          countryID: widget.countryID,
        ),
      ),
    );
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
        title: const Text(
          'Şehir Seç',
          style: TextStyles.labelStyle,
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              onChanged: _filterCities,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                labelText: 'Şehir Ara',
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
              itemCount: _filteredCityList.length,
              itemBuilder: (BuildContext context, int index) {
                final city = _filteredCityList[index];
                return ListTile(
                  title: Text(
                    city['CityNameTR'],
                    style: TextStyles.labelStyle.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    _navigateToRegionSelection(city['ID'], city['CityNameTR']);
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
