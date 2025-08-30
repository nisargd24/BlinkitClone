import 'package:blinkit/repository/screens/cart/cartscreen.dart';
import 'package:blinkit/repository/screens/category/categoryscreen.dart';
import 'package:blinkit/repository/screens/home/homescreen.dart';
import 'package:blinkit/repository/screens/print/printscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int currentIndex = 0;

  final List<Widget> pages = [
    HomeScreen(),
    CartScreen(),
    CategoryScreen(),
    Printscreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: pages),
      bottomNavigationBar: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              border: Border(
                top: BorderSide(
                  color: Color(0xFF9C9C9C),
                  width: 1,
                ), // separator line
              ),
            ),
            child: BottomNavigationBar(
              showSelectedLabels: false,
              showUnselectedLabels: false,
              type: BottomNavigationBarType.fixed,
              currentIndex: currentIndex,
              onTap: (index) {
                setState(() => currentIndex = index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Uihelper.CustomImage(img: "home 1.png"),
                  label: "Home",
                ),
                BottomNavigationBarItem(
                  icon: Uihelper.CustomImage(img: "shopping-bag 1.png"),
                  label: "Cart",
                ),
                BottomNavigationBarItem(
                  icon: Uihelper.CustomImage(img: "category 1.png"),
                  label: "Category",
                ),
                BottomNavigationBarItem(
                  icon: Uihelper.CustomImage(img: "printer 1.png"),
                  label: "Print",
                ),
              ],
            ),
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 300),
            curve: Curves.ease,
            top: 0, // at the very top of the nav bar
            left:
                MediaQuery.of(context).size.width / 4 * currentIndex +
                (MediaQuery.of(context).size.width / 8 - 30),
            child: Container(height: 5, width: 60, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
