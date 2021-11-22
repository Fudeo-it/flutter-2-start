import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:progetto7/model/coin_model.dart';

class CoinListingRepository {
  static Future<List<CoinModel>> all() async {
    final uri =
        Uri.parse("https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=100&convert=USD");

    final response = await http.get(uri, headers: {
      "X-CMC_PRO_API_KEY": "5e3ccaeb-f75c-419b-8295-8d1779306255",
    });

    final jsonData = json.decode(response.body);
    return List.from(jsonData["data"]).map((coinData) {
      return CoinModel.fromData(coinData);
    }).toList();
  }
}
