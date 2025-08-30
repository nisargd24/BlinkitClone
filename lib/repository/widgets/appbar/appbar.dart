import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Appbar extends StatelessWidget {
  const Appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.CustomText(
                  text: "Blinkit in",

                  color: Color(0xFFFFFFFF),
                  fontweight: FontWeight.bold,
                  fontFamily: "bold",
                  fontsize: 12,
                ),
                SizedBox(height: 2),
                Uihelper.CustomText(
                  text: "16 minutes",
                  color: Color(0xFFFFFFFF),
                  fontweight: FontWeight.bold,
                  fontFamily: "bold",
                  fontsize: 20,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Uihelper.CustomText(
                      text: "HOME - ",
                      color: Color(0xFFFFFFFF),
                      fontweight: FontWeight.bold,
                      fontFamily: "bold",
                      fontsize: 16,
                    ),
                    SizedBox(width: 5),
                    Uihelper.CustomText(
                      text: "Geeta Bhawan, Indore (MP)",
                      color: Color(0xFFFFFFFF),
                      fontweight: FontWeight.normal,
                      fontFamily: "regular",
                      fontsize: 16,
                    ),
                    SizedBox(width: 15),
                    Uihelper.CustomImage(img: "arrow down.png", size: 16),
                  ],
                ),
              ],
            ),
            Spacer(),

            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(100),
              ),
              child: IconButton(
                splashColor: Colors.transparent,
                onPressed: () {
                  // Handle button press
                },
                icon: Icon(Icons.person, color: Colors.white, size: 26),
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        Uihelper.CustomTextField(controller: TextEditingController()),
        SizedBox(height: 15),
      ],
    );
  }
}
