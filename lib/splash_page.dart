import 'dart:async';

import 'package:demo123/animations/fade_animation_page.dart';
import 'package:demo123/sign_up_page.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  static const String id = "splash_page";

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  // ishga tushganda vaxt beriladi
  _initTimer(){
    Timer(Duration(seconds: 5),(){
      Navigator.pushReplacementNamed(context, SignUpPage.id);
    });
  }

  //Ixtiyoriy ochilganda ishga tushadigon funksiya
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _initTimer();
  }
// ishni toxtatadigon funksiya
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _initTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        color: Colors.white,
        child: Stack(
            children: [
              FadeAnimation(2, Center(
                child: Image.asset(
                  "asset/images/amazon.png.1.png",
                  width: 200,
                  height: 200,
                ),
              ),),
              FadeAnimation(2.1, Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Center(
                      child: Text(
                        "From Amazon",
                        style: TextStyle(color: Colors.grey, fontSize: 17),
                      ))
                ],
              ))
            ]),
      ),
    );
  }
}
