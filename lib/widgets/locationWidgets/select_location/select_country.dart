import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../classes/constants.dart';
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
  late String languageCode;

  @override
  void initState() {
    super.initState();
    _filteredCountryList = widget.countryList;
        languageCode = Constants.languageCode; 

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
        title:  Text(
          'select_country'.tr,
          style:  TextStyles.labelStyle,
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              onChanged: _filterCountryList,
              style: const TextStyle(color: Colors.white),
              decoration:  InputDecoration(
                labelText: 'search_country'.tr,
                labelStyle:const TextStyle(color: Colors.white, fontSize: 18),
                prefixIcon: const Icon(Icons.search, color: Colors.white),
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
