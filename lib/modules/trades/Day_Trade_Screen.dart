import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Navigation_Drawer.dart';
import 'package:myapp/dashboard/Trade_List.dart';

class DayTradeRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.appBarText),
      ),
      drawer: NavigationDrawer(),
      body: TradeList(),
    );
  }
}
