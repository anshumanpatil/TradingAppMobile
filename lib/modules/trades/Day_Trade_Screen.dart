import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Navigation_Drawer.dart';
import 'package:myapp/dashboard/Trade_Card.dart';

import 'package:myapp/dao/Trade_Data.dart';

class DayTradeRoute extends StatelessWidget {
  final litems = List<TradeData>.generate(
  10,
  (i) => TradeData(
    title: '$i' 
  )
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.appBarText),
      ),
      drawer: NavigationDrawer(),
      body: Scaffold(
        appBar: AppBar(
          title: Text(Constants.appBarText),
        ),
        body: new ListView.builder
        (
          itemCount: litems.length,
          itemBuilder: (BuildContext ctxt, int index) {
            return new TradeCard(litems[index]);
          }
        ),
      ),
    );
  }
}



