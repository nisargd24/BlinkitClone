import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class DiwaliSaleBox extends StatelessWidget {
  final String imagePath, subtext;
  const DiwaliSaleBox({
    super.key,
    required this.imagePath,
    required this.subtext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        width: 100,
        decoration: BoxDecoration(
          color: Color(0xFFEAD3D3),
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 5, bottom: 0, left: 5, right: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Uihelper.CustomText(
                text: subtext,
                color: Color.fromARGB(255, 0, 0, 0),
                fontweight: FontWeight.bold,
                fontFamily: "bold",
                fontsize: 12,
              ),
              Uihelper.CustomImage(img: imagePath, size: 70),
            ],
          ),
        ),
      ),
    );
  }
}
