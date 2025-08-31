import 'package:blinkit/repository/widgets/diwalisalebox/diwalisalebox.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class DiwaliSale extends StatelessWidget {
  const DiwaliSale({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      color: Color(0xFFEC0505),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 5,
              left: 5,
              right: 5,
              bottom: 5,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Uihelper.CustomImage(img: "firecracker 1.png", size: 50),
                Uihelper.CustomImage(img: "firecracker 2.png", size: 50),
                Uihelper.CustomText(
                  text: "Mega Diwali Sale",
                  color: Color(0xFFFFFFFF),
                  fontweight: FontWeight.bold,
                  fontsize: 20,
                ),
                Uihelper.CustomImage(img: "firecracker 3.png", size: 50),
                Uihelper.CustomImage(img: "firecracker 4.png", size: 50),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                DiwaliSaleBox(
                  imagePath: "diya.png",
                  subtext: "Lights, Diyas\n & Candles",
                ),
                DiwaliSaleBox(imagePath: "gift.png", subtext: "Diwali \nGifts"),
                DiwaliSaleBox(
                  imagePath: "gadget.png",
                  subtext: "Appliances\n& Gadgets",
                ),
                DiwaliSaleBox(
                  imagePath: "sofa.png",
                  subtext: "Home \n& Living",
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
