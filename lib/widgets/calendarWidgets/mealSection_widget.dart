import 'package:flutter/material.dart';

import 'shareableListItem_widget.dart';

class ShareableCard extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onLongPress;

  const ShareableCard({
    super.key,
    required this.title,
    required this.value,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShareableListItem(
            title: title,
            value: value,
            onLongPress: onLongPress,
          ),
        ],
      ),
    );
  }
}
