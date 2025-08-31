import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BulletedText extends StatelessWidget {
  final Color color;
  final String text;
  const BulletedText({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("✦", style: TextStyle(color: color, fontSize: 14)),
        SizedBox(width: 10),
        Uihelper.CustomText(
          text: text,
          color: color,
          fontweight: FontWeight.normal,
          fontsize: 14,
        ),
      ],
    );
  }
}
