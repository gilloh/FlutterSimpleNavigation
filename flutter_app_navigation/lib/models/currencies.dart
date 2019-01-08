class Currencies {
  bool success;
  String terms;
  String privacy;
  int timestamp;
  String source;
  Map<String, double> quotes;

  Currencies({
    this.success,
    this.terms,
    this.timestamp,
    this.privacy,
    this.source,
    this.quotes,
  });

  factory Currencies.fromJson(Map<String, dynamic> json) => new Currencies(
    success: json["success"],
    terms: json["terms"],
    privacy: json["privacy"],
    timestamp: json["timestamp"],
    source: json["source"],
    quotes: new Map.from(json["quotes"]).map((k, v) => new MapEntry<String, double>(k, v.toDouble())),
  );
}
