import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'package:myapp/dao/Trade_Data.dart';

List<TradeData> parseTradeResponse(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();
  return parsed.map<TradeData>((json) => TradeData.fromJson(json)).toList();
}

class TradeService {
  static Future<List<TradeData>> fetchTradeResponse(
      String tradeCallsPath) async {
    http.Client client = new http.Client();
    final response = await client.get(tradeCallsPath);
    return compute(parseTradeResponse, response.body);
  }
}
