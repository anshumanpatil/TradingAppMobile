import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Navigation_Drawer.dart';
import 'package:myapp/dashboard/Trade_Card.dart';

import 'package:myapp/dao/Trade_Data.dart';

class DayTradeRoute extends StatelessWidget {
  final tradeData = new TradeData (
    title: "Anshuman"
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
        body: TradeCard(tradeData),
      ),
    );
  }
}
