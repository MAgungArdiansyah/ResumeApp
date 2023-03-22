import 'package:flutter/material.dart';
import 'package:resumeapp/view/about_me/about_me.dart';
import 'package:resumeapp/view/landing_page/landing_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LandingPage.routeName,
      routes: {
        LandingPage.routeName: (context) => const LandingPage(),
        
        AboutMe.routeName: (context) => const AboutMe()
      },
    );
  }
}
