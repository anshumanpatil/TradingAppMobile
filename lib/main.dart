import 'package:flutter/material.dart';
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
        theme: ThemeData(primarySwatch: Colors.blue), 
        home: LoginPage(),
        routes:  {
          Constants.SwingTradeRoute: (context) => SwingTradeRoute(),
          Constants.DayTradeRoute: (context) => DayTradeRoute(),
     },

        );
  }
}
