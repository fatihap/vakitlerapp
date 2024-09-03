import 'package:flutter/material.dart';
import 'package:namazvakitleri/styles/DateColumWidgetStyles.dart';

import '../../styles/textStyle.dart';

class ShareableListItem extends StatelessWidget {
  final String title;
  final String value;
  final VoidCallback? onLongPress;

  const ShareableListItem({super.key, 
    required this.title,
    required this.value,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: onLongPress,
      child: ListTile(
        title: Text(
          title,
          style: DateColumnWidgetStyles.titleStyle
        ),
        subtitle: Text(
          value,
          style: TextStyles.subTitleStyle.copyWith(color: Colors.black, ),
        ),
      ),
    );
  }
}