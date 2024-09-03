import 'package:flutter/material.dart';

import '../../../fragments/location.dart';
import '../../../styles/textStyle.dart';

class SelectedCityAndIconWidget extends StatelessWidget {
  final String selectedCityName;
  final BuildContext context;

  const SelectedCityAndIconWidget({
    super.key,
    required this.selectedCityName,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 213, 204, 176),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                selectedCityName,
                style: TextStyles.buttonTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            IconButton(
              icon: const Icon(Icons.location_on),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LocationWidget(
                      defaultCityId: '16741',
                      defaultCityName: 'İstanbul',
                      isFirstTouch: false,
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
