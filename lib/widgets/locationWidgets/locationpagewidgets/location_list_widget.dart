import 'package:flutter/material.dart';

class LocationListTile extends StatelessWidget {
  final Map<String, dynamic> location;
  final Map<String, dynamic>? selectedCity;
  final void Function(String, String) onTap;

  const LocationListTile({
    super.key,
    required this.location,
    required this.selectedCity,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: selectedCity != null && selectedCity!['ID'] == location['ID']
          ?  Colors.red
          : null,
      title: Text(location['CityNameTR'],
          style: const TextStyle(color: Colors.red)),
      subtitle: Text(location['CityStateTR'] ?? '',
          style: const TextStyle(color: Colors.red)),
      onTap: () {
        onTap(location['ID'], location['CityNameTR']);
      },
    );
  }
}
