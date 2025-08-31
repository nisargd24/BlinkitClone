import 'package:blinkit/repository/widgets/appbar/appbar.dart';
import 'package:blinkit/repository/widgets/diwalisalebox/diwalisale.dart';
import 'package:blinkit/repository/widgets/itemwithaddbutton/item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFFEC0505),
          toolbarHeight: 160,
          title: Appbar(),
          automaticallyImplyLeading: false,
        ),
        body: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 2),
            child: Column(
              children: [
                DiwaliSale(),
                ItemWithAddButton(imagePath: "candle.png"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
