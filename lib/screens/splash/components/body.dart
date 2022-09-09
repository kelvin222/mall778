import 'dart:async';

import 'package:flutter/material.dart';
import 'package:mall778/constants.dart';
import 'package:mall778/screens/home/home_screen.dart';
import 'package:mall778/screens/sign_in/sign_in_screen.dart';
import 'package:mall778/size_config.dart';

// This is the best practice
import '../components/splash_content.dart';
import '../../../components/default_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
    startTime() async {
    var _duration = new Duration(seconds: 2);
    return new Timer(_duration, navigationPage);
  }

    void navigationPage() {
    Navigator.popAndPushNamed(context, HomeScreen.routeName);
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "seek it find it!",
      "image": "assets/images/logo.png"
    }
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
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
            
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
