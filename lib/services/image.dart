import 'package:flutter/material.dart';
import 'package:html/dom.dart' as dom;

class ImageHtml extends StatelessWidget {
  final String htmlContent;

  const ImageHtml(this.htmlContent, {super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> children = [];

    final document = dom.Document.html(htmlContent);

    for (final node in document.nodes) {
      if (node is dom.Element) {
        if (node.localName == 'img') {
          final src = node.attributes['src'];
          if (src != null) {
            children.add(Image.network(src));
          }
        } else if (node.localName == 'p') {
          final text = node.text;
          if (text.isNotEmpty) {
            children.add(Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(text),
            ));
          }
        }
      } else if (node is dom.Text) {
        final text = node.data.trim();
        if (text.isNotEmpty) {
          children.add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(text),
          ));
        }
      }
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
