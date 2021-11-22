import 'package:flutter/material.dart';
import 'package:progetto7/model/coin_model.dart';

class CoinListTile extends StatelessWidget {
  final CoinModel coinModel;
  const CoinListTile(this.coinModel);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(coinModel.symbol),
      subtitle: Text(
        coinModel.name,
        style: TextStyle(color: Colors.grey.shade600),
      ),
      trailing: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "\$${coinModel.price.toStringAsFixed(2)}",
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Text(
            "${coinModel.percentChange24h.toStringAsFixed(2)}%",
            style: TextStyle(
              fontSize: 12,
              color: coinModel.percentChange24h > 0 ? Colors.green : Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}
