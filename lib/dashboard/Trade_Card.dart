import 'package:flutter/material.dart';
import 'package:myapp/dao/Trade_Data.dart';
import 'package:myapp/helpers/HexTransformer.dart';

class TradeCard extends StatelessWidget {
  final TradeData tradeData;
  TradeCard(this.tradeData);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: new IconTheme(
                data: new IconThemeData(
                    color: new Color(HexTransformer.getColor(tradeData.type))),
                child: new Icon(HexTransformer.getIcon(tradeData.type)),
              ),
              title: Text(tradeData.title),
              subtitle: Text(tradeData.body),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Text('View Details'),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 8),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
