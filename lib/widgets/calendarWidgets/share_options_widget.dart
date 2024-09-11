import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ShareOptionsBottomSheet extends StatelessWidget {
  final String content;
  final Function(String) onShare;

  const ShareOptionsBottomSheet({
    super.key,
    required this.content,
    required this.onShare,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Wrap(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.share),
            title:  Text('paylas'.tr),
            onTap: () {
              onShare(content);
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}