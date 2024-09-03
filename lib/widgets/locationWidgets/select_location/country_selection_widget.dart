import 'package:flutter/material.dart';

import 'select_country.dart';
import '../../../styles/colors.dart';

class CountrySelectionButton extends StatelessWidget {
  final List<Map<String, dynamic>> countryList;
  final Function(String) onCountrySelected;
  final Function(String) showCitySelectionPage;

  const CountrySelectionButton({
    super.key,
    required this.countryList,
    required this.onCountrySelected,
    required this.showCitySelectionPage,
  });

  void _showCountrySelectionPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CountrySelectionPage(
          countryList: countryList,
          onCountrySelected: onCountrySelected,
          showCitySelectionPage: showCitySelectionPage,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.add, color: AppColors.textPrimary),
      onPressed: () => _showCountrySelectionPage(context),
    );
  }
}
