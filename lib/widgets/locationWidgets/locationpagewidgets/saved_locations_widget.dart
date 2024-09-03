import 'package:flutter/material.dart';

class SavedLocationsList extends StatelessWidget {
  final List<Map<String, dynamic>> savedLocations;
  final Map<String, dynamic>? selectedCity;
  final void Function(Map<String, dynamic>) onRemove;
  final void Function(String, String) onTap;

  const SavedLocationsList({
    super.key,
    required this.savedLocations,
    required this.selectedCity,
    required this.onRemove,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: savedLocations.length,
        itemBuilder: (context, index) {
          final savedLocation = savedLocations[index];
          return ListTile(
            tileColor: selectedCity != null &&
                    selectedCity!['ID'] == savedLocation['ID']
                ? const Color.fromARGB(255, 230, 240, 243).withOpacity(0.3)
                : null,
            title: Text(savedLocation['CityNameTR'],
                style: const TextStyle(color: Colors.black)),
            subtitle: Text(savedLocation['CityStateTR'] ?? '',
                style: const TextStyle(color: Colors.grey)),
            trailing: IconButton(
              icon: const Icon(Icons.close, color: Colors.black),
              onPressed: () {
                onRemove(savedLocation);
              },
            ),
            onTap: () {
              onTap(savedLocation['ID'], savedLocation['CityNameTR']);
            },
          );
        },
      ),
    );
  }
}
