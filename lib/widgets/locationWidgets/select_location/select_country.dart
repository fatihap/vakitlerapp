import 'package:flutter/material.dart';

import '../../../styles/textStyle.dart';

class CountrySelectionPage extends StatefulWidget {
  final List<Map<String, dynamic>> countryList;
  final Function(String) onCountrySelected;
  final Function(String) showCitySelectionPage;

  const CountrySelectionPage({
    super.key,
    required this.countryList,
    required this.onCountrySelected,
    required this.showCitySelectionPage,
  });

  @override
  _CountrySelectionPageState createState() => _CountrySelectionPageState();
}

class _CountrySelectionPageState extends State<CountrySelectionPage> {
  List<Map<String, dynamic>> _filteredCountryList = [];

  @override
  void initState() {
    super.initState();
    _filteredCountryList = widget.countryList;
  }

  void _filterCountryList(String query) {
    setState(() {
      _filteredCountryList = widget.countryList
          .where((country) => country['CountryNameTR']
              .toLowerCase()
              .contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
          'Ülke Seç',
          style: TextStyles.labelStyle,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterCountryList,
              style: const TextStyle(color: Colors.white), // Set text color to white
              decoration: const InputDecoration(
                labelText: 'Ülke Ara',
                labelStyle: TextStyle(color: Colors.white, fontSize: 18),
                prefixIcon: Icon(Icons.search, color: Colors.white),
                filled: true,
                fillColor: Colors.black54, // Optional: Fill color for the text field background
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // White divider
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // White divider
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white), // White divider
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _filteredCountryList.length,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(
                    _filteredCountryList[index]['CountryNameTR'],
                    style: TextStyles.labelStyle.copyWith(color: Colors.white),
                  ),
                  onTap: () {
                    widget.onCountrySelected(_filteredCountryList[index]['ID']);
                    widget.showCitySelectionPage(_filteredCountryList[index]['ID']);
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
