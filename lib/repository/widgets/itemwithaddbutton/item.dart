import 'package:flutter/material.dart';

class ItemWithAddButton extends StatelessWidget {
  final String imagePath;
  const ItemWithAddButton({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imagePath)),
      ),
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),

                border: Border.all(color: Color(0xFF27AF34), width: 2),
              ),
              child: Text(
                "ADD",
                style: TextStyle(
                  color: Color(0xFF27AF34),
                  fontWeight: FontWeight.bold,
                  fontFamily: "bold",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
