import 'dart:async';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:myapp/helpers/Constants.dart';

import 'package:myapp/modules/Login_Screen.dart';
import 'package:myapp/modules/trades/Day_Trade_Screen.dart';
import 'package:myapp/modules/trades/Swing_Trade_Screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const color = const Color(0xFFFFAF3C);
    return SplashScreen(
      backgroundColor: color,
      seconds: 6,
      navigateAfterSeconds: new SecondScreen(),
      title: new Text('Hook Trades With Us!',textScaleFactor: 2,),
      image: Image.network(Constants.SplashImagePath),
      loadingText: Text("Adding hooks to trades"),
      photoSize: 100.0,
      loaderColor: Colors.blue,
    );
  }
}
class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.blue), 
        home: LoginPage(),
        routes:  {
          Constants.SwingTradeRoute: (context) => SwingTradeRoute(),
          Constants.DayTradeRoute: (context) => DayTradeRoute(),
     },
        );
  }
}
