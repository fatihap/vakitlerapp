import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../classes/functions.dart';
import '../../styles/colors.dart';

class ResizableArticleCard extends StatefulWidget {
  final double fontSize;
  final double minFontSize;
  final double maxFontSize;
  final String yazilarBaslik;
  final String yazilarMetin;

  const ResizableArticleCard({
    super.key,
    required this.fontSize,
    required this.minFontSize,
    required this.maxFontSize,
    required this.yazilarBaslik,
    required this.yazilarMetin,
  });

  @override
  _ResizableArticleCardState createState() => _ResizableArticleCardState();
}

class _ResizableArticleCardState extends State<ResizableArticleCard> {
  late double fontSize;

  @override
  void initState() {
    super.initState();
    fontSize = widget.fontSize;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white.withOpacity(0.8),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  icon: const Icon(Icons.zoom_in, color: AppColors.textPrimary),
                  onPressed: () {
                    setState(() {
                      if (fontSize < widget.maxFontSize) {
                        fontSize += 2.0;
                        saveFontSize(fontSize);
                      }
                    });
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.zoom_out, color: AppColors.textPrimary),
                  onPressed: () {
                    setState(() {
                      if (fontSize > widget.minFontSize) {
                        fontSize -= 2.0;
                        saveFontSize(fontSize);
                      }
                    });
                  },
                ),
              ],
            ),
            Html(
              data: widget.yazilarBaslik,
              style: {
                'body': Style(
                  fontSize: FontSize(24), // Fixed font size of 28
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              },
            ),
            const SizedBox(height: 12),
            GestureDetector(
              onLongPress: () => _shareYazilar(context, widget.yazilarMetin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Html(
                    data: widget.yazilarMetin,
                    style: {
                      'body': Style(fontSize: FontSize(fontSize) , color: (Colors.black)),
                    },
                  ),
                  const SizedBox(height: 12),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void saveFontSize(double size) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setDouble('fontSize', size);
  }

  void _shareYazilar(BuildContext context, String yazilarMetin) {
    final cleanText = Functions.cleanHtmlTags(yazilarMetin);
    Share.share(cleanText, subject: 'Bugünün Takvimi');
  }
}
