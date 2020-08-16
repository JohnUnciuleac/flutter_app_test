import 'package:flutter/material.dart';
import 'package:CARing/screens/splash/components/defaultbutton.dart';
import 'package:CARing/screens/login/login_screen.dart';
import 'package:CARing/screens/splash/components/splash_content.dart';

import 'package:CARing/size_config.dart';
import '../components/splash_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text":
          'Găsește instant șoferul \nDoar pe baza plăcuței de înmatriculare',
      "image": "assets/images/splashscreen1.png"
    },
    {
      "text":
          'Interacționează direct cu persoana \nPoți lua legătura directă cu orice șofer',
      "image": "assets/images/splashscreen2.jpg"
    },
    {
      "text": 'Comunitate \nFiecare persoană poate contribui',
      "image": "assets/images/splashscreen3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => SplashContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    Spacer(
                      flex: 1,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index),
                      ),
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    DefaultButton(
                      text: "Continuă",
                      press: () =>
                          Navigator.pushNamed(context, LoginScreen.routeName),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 200),
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? Color(0xFFFFB302) : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
