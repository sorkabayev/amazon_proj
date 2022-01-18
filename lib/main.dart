import 'package:demo123/sign_up_page.dart';
import 'package:demo123/splash_page.dart';
import 'package:demo123/version_info.dart';
import 'package:flutter/material.dart';

import 'home_page.dart';
import 'inout_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  SignUpPage(),
          routes: {
       SignUpPage.id: (context) => SignUpPage(),
            HomePage.id: (context) => const HomePage(),
            SplashPage.id: (context) => const SplashPage(),
            InputPage.id: (context) => const InputPage(),
            VersionPage.id: (context) => VersionPage(),
          },
    );
  }
}
