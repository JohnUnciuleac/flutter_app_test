import 'package:flutter/material.dart';
import 'package:flutter_app_test/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(itemBuilder: (context,index) => SplashContent(
                image: "assets\images\steering_wheel.jpg",
                text: "Of Germania",
              ),
            )),
            Expanded(
              flex: 2,
              child: SizedBox(),
            )
          ],
        ),
      ),
    );
  }
}

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(
          "CARing",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(36),
              color: Colors.blue,
              fontWeight: FontWeight.bold),
        ),
        Text("Drive Safe!"),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        )
      ],
    );
  }
}
