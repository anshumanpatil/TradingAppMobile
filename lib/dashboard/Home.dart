import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Navigation_Drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Constants.appBarText)),
      body: Center(child: Text('Get 20% off on Prime Membership!')),
      drawer: NavigationDrawer(),
    );
  }
}
