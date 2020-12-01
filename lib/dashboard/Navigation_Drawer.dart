import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("bull.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Text(''),
            ),
            ListTile(
              title: Text('Swing'),
              onTap: () => Navigator.pushReplacementNamed(context, Constants.SwingTradeRoute),
            ),
            ListTile(
              title: Text('Day'),
              onTap: () => Navigator.pushReplacementNamed(context, Constants.DayTradeRoute),
            ),
          ],
        ),
      );
  }
}