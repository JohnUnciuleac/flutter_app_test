import 'package:flutter/material.dart';

import 'package:flutter_app_test/size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: () async => false,
      child: Column(
        children: [
          Spacer(
            flex: 2,
          ),
          Text(
            "CARing",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(36),
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          Spacer(
            flex: 2,
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: getProportionateScreenWidth(16),
            ),
            textAlign: TextAlign.center,
          ),
          Spacer(
            flex: 2,
          ),
          Image.asset(
            image,
            height: getProportionateScreenHeight(265),
            width: getProportionateScreenWidth(235),
          )
        ],
      ),
    );
  }
}
