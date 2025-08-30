import 'package:blinkit/repository/screens/bottomnav/bottomnavscreen.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Uihelper.CustomImage(img: 'Blinkit Onboarding Screen.png'),
          SizedBox(height: 30),
          Uihelper.CustomImage(img: 'logo.png'),
          SizedBox(height: 20),
          Uihelper.CustomText(
            text: "India's Last Minute App",
            color: Color(0xFF000000),
            fontweight: FontWeight.bold,
            fontFamily: "bold",
            fontsize: 20,
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 4,
              child: Container(
                height: 250,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20),
                    Uihelper.CustomText(
                      text: "Nisarg",
                      color: Color(0xFF000000),
                      fontweight: FontWeight.normal,
                      fontFamily: "regular",
                      fontsize: 14,
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text: "91099XXXXX",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.bold,
                      fontFamily: "bold",
                      fontsize: 14,
                    ),
                    SizedBox(height: 20),
                    SizedBox(
                      height: 48,
                      width: 295,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BottomNavScreen(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFFE23744),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Uihelper.CustomText(
                              text: "Login with",
                              color: Color(0xFFFFFFFF),
                              fontweight: FontWeight.bold,
                              fontFamily: "bold",
                              fontsize: 14,
                            ),
                            SizedBox(width: 5),
                            Uihelper.CustomImage(img: 'zomato.png'),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Uihelper.CustomText(
                      text:
                          "Access your saved addresses from Zomato automatically!",
                      color: Color(0xFF9C9C9C),
                      fontweight: FontWeight.normal,
                      fontFamily: "regular",
                      fontsize: 10,
                    ),
                    SizedBox(height: 30),
                    Uihelper.CustomText(
                      text: "or login with phone number",
                      color: Color(0xFF269237),
                      fontweight: FontWeight.normal,
                      fontFamily: "regular",
                      fontsize: 14,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
