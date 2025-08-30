import 'package:flutter/material.dart';

class Uihelper {
  static CustomImage({required String img, double? size}) {
    return Image.asset('assets/images/$img', width: size, height: size);
  }

  static CustomText({
    required String text,
    required Color color,
    required FontWeight fontweight,
    String? fontFamily,
    required double fontsize,
    TextAlign? alignment,
  }) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: fontweight,
        fontFamily: fontFamily ?? "regular",
        fontSize: fontsize,
      ),
    );
  }

  static CustomTextField({required TextEditingController controller}) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(color: Color(0XFFC5C5C5)),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          hintText: "Search \"ice-cream\"",

          prefixIcon: Icon(Icons.search, color: Colors.black),
          suffixIcon: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 30,
                width: 1,
                color: Colors.black, // vertical line
                margin: const EdgeInsets.symmetric(horizontal: 8),
              ),
              Icon(Icons.mic, color: Colors.black),
            ],
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
