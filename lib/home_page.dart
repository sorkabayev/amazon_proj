import 'package:demo123/animations/fade_animation_page.dart';
import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  static const String id = "home_page";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: FadeAnimation(1.1, const Text("Amazon",
          style: TextStyle(
              fontFamily: "Billabong",
              fontSize: 30
          ),),)
      ),
      body: FadeAnimation(
        1.2,const Center(
        child: Text(
          "Welcome to Amazon",
          style: TextStyle(
              fontSize: 30
          ),
        ),
      ),
      )
    );
  }
}
