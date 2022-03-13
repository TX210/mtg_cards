import 'package:flutter/material.dart';

class ImageText extends StatelessWidget {
  final String imagePath;
  final String text;
  final double padding;
  final MainAxisAlignment alignment;
  final double fontSize;
  final bool leading;
  const ImageText(
      {Key? key,
      required this.imagePath,
      required this.text,
      this.padding = 5,
      this.fontSize = 14,
      this.leading = true,
      this.alignment = MainAxisAlignment.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [
      Image.asset(imagePath,
          errorBuilder: (context, error, stackTrace) => const SizedBox()),
      Padding(
        padding: EdgeInsets.all(padding),
        child: Text(
          text,
          style: TextStyle(fontSize: fontSize),
        ),
      ),
    ];
    return Row(
      mainAxisAlignment: alignment,
      children: leading ? content : content.reversed.toList(),
    );
  }
}
