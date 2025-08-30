import 'package:blinkit/repository/widgets/appbar/appbar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFFEC0505),
          toolbarHeight: 160,
          title: Appbar(),
          automaticallyImplyLeading: false,
        ),
        body: Center(child: Text("Welcome to the Home Screen")),
      ),
    );
  }
}
