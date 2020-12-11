class TradeData {
  String title;
  String type;
  String body;
  TradeData({this.title, this.type, this.body});

  factory TradeData.fromJson(Map<String, dynamic> json) {
    return TradeData(
        title: json['title'] as String,
        type: json['type'] as String,
        body: json['body'] as String);
  }
}
