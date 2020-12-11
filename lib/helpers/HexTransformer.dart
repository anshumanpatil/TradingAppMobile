import 'package:flutter/material.dart';

class HexTransformer {
  static dynamic getColor(callType) {
    if (callType == 'buy') {
      return 0xFF00FF00;
    } else {
      return 0xFFFF0000;
    }
  }

  static IconData getIcon(callType) {
    if (callType == 'buy') {
      return IconData(0xea98,
          fontFamily: 'MaterialIcons', matchTextDirection: true);
    } else {
      return IconData(0xea96,
          fontFamily: 'MaterialIcons', matchTextDirection: true);
    }
  }
}
