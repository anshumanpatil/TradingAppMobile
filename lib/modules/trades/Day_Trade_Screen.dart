import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Navigation_Drawer.dart';
import 'package:myapp/dashboard/Trade_Card.dart';
import 'package:myapp/dao/Trade_Data.dart';


Future<List<TradeData>> fetchPhotos(http.Client client) async {
  final response = await client.get('https://jsonplaceholder.typicode.com/posts');
  return compute(parsePhotos, response.body);
}

List<TradeData> parsePhotos(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  
  return parsed.map<TradeData>((json) => TradeData.fromJson(json)).toList();
}


class DayTradeRoute extends StatelessWidget {
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
        body: FutureBuilder<List<TradeData>>(
                future: fetchPhotos(http.Client()),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    print("snapshot error");
                    print("=====================================================================");
                    print(snapshot.error);
                    print("=====================================================================");
                  }
                    
                  return ListView.builder        (
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext ctxt, int index) {
                      return new TradeCard(snapshot.data[index]);
                    }
                  );
                }),
          ),
    );
  }
}



