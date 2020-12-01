class TradeData {
 String title;
 TradeData({this.title});

 factory TradeData.fromJson(Map<String, dynamic> json) {
    return TradeData(
      title: json['title'] as String
    );
  }

}
