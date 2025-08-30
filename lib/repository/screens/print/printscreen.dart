import 'package:blinkit/repository/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class Printscreen extends StatelessWidget {
  const Printscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFF7CB45),
          toolbarHeight: 160,
          title: Appbar(),
          automaticallyImplyLeading: false,
        ),
        body: Center(child: Text("Welcome to the Print Screen")),
      ),
    );
  }
}
