class CoinModel {
  final String name;
  final String symbol;
  final double price;
  final double percentChange24h;

  const CoinModel({
    required this.name,
    required this.symbol,
    required this.price,
    required this.percentChange24h,
  });

  factory CoinModel.fromData(Map<String, dynamic> map) {
    final name = map["name"];
    final symbol = map["symbol"];
    final price = map["quote"]["USD"]["price"];
    final percentChange24h = map["quote"]["USD"]["percent_change_24h"];

    return CoinModel(
      name: name,
      symbol: symbol,
      price: price,
      percentChange24h: percentChange24h,
    );
  }
}
