import 'package:flutter/material.dart';
import 'package:myapp/helpers/Constants.dart';
import 'package:myapp/dashboard/Trade_Card.dart';
import 'package:myapp/dao/Trade_Data.dart';
import 'package:myapp/services/Trade_Service.dart';

class TradeList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<TradeData>>(
          future: TradeService.fetchTradeResponse(Constants.TradeCallsPath),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print("snapshot error");
              print(
                  "=====================================================================");
              print(snapshot.error);
              print(
                  "=====================================================================");
            }
            if (!snapshot.hasData) {
              return Center(child: CircularProgressIndicator());
            }

            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext ctxt, int index) {
                  return new TradeCard(snapshot.data[index]);
                });
          }),
    );
  }
}
