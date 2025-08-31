import 'package:blinkit/repository/widgets/appbar/appbar.dart';
import 'package:blinkit/repository/widgets/bulletedpoints/bulletedtext.dart';
import 'package:blinkit/repository/widgets/uihelper.dart';
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
        body: Scaffold(
          backgroundColor: const Color(0xFFFBF0CE),
          body: Column(
            children: [
              Container(
                height: 170,
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 30),
                  child: Column(
                    children: [
                      Uihelper.CustomText(
                        text: "Print Store",
                        color: Colors.black,
                        fontweight: FontWeight.bold,
                        fontFamily: "bold",
                        fontsize: 32,
                      ),
                      SizedBox(height: 5),
                      Uihelper.CustomText(
                        text: "Blinkit ensures secure prints at every stage",
                        color: Color(0xFF9C9C9C),
                        fontweight: FontWeight.normal,
                        fontsize: 14,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  color: Colors.white,
                  height: 170,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Uihelper.CustomText(
                          text: "Documents",
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontweight: FontWeight.bold,
                          fontFamily: "bold",
                          fontsize: 14,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BulletedText(
                                      text: "Price starting at rs 3/page",
                                      color: Color(0xFF9C9C9C),
                                    ),
                                    BulletedText(
                                      text: "Paper quality: 70 GSM",
                                      color: Color(0xFF9C9C9C),
                                    ),
                                    BulletedText(
                                      text: "Single side prints",
                                      color: Color(0xFF9C9C9C),
                                    ),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: EdgeInsets.only(
                                            right: 15,
                                            left: 15,
                                            top: 5,
                                            bottom: 5,
                                          ),
                                          backgroundColor: Color(0xFF27AF34),
                                        ),

                                        onPressed: () {},
                                        child: Uihelper.CustomText(
                                          text: "Upload Files",
                                          color: Colors.white,
                                          fontweight: FontWeight.bold,
                                          fontFamily: "bold",
                                          fontsize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Uihelper.CustomImage(img: "paper.png"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
