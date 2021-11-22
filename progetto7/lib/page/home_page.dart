import 'package:flutter/material.dart';
import 'package:progetto7/component/coin_list_tile.dart';
import 'package:progetto7/model/coin_model.dart';
import 'package:progetto7/repository/coin_listing_repository.dart';
import 'package:progetto7/theme/colors.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Future<List<CoinModel>> coinListingsFuture;

  @override
  void initState() {
    coinListingsFuture = CoinListingRepository.all();
    super.initState();
  }

  void refreshCoinListings() {
    setState(() {
      coinListingsFuture = CoinListingRepository.all();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ThemeColors.scaffoldBackgroundColor,
      appBar: appBar(),
      body: body(),
    );
  }

  AppBar appBar() => AppBar(
        backgroundColor: ThemeColors.cardBackgroundColor,
        leading: IconButton(
          onPressed: refreshCoinListings,
          icon: Icon(Icons.refresh),
        ),
        title: Text(
          "BINANCE",
          style: TextStyle(
            letterSpacing: 5,
            color: Colors.yellow,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              foregroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4E03AQHO9fs7VQUjtw/profile-displayphoto-shrink_800_800/0/1594903913636?e=1641427200&v=beta&t=YxBT6lQCGAGpiz-z-6wDe64tEye7xyn3HqpFSYivmrM",
              ),
            ),
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size(double.infinity, 100),
          child: Expanded(
              child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Il mio portafoglio",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey.shade500,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    "€ 7.920,00",
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      );

  Widget body() => Container(
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(color: ThemeColors.cardBackgroundColor, boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            color: Colors.black26,
            blurRadius: 5,
            spreadRadius: 2,
          ),
        ]),
        child: Column(
          children: [
            bodyHeader(),
            bodyContent(),
          ],
        ),
      );

  Widget bodyHeader() => Padding(
        padding: EdgeInsets.all(16),
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          title: Text(
            "Gainers & Losers",
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          subtitle: Text(
            "Basato sulle top 100 coins",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey.shade500,
            ),
          ),
          trailing: Text(
            "Mostra tutte",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade400,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      );

  Widget bodyContent() => Expanded(
          child: FutureBuilder<List<CoinModel>>(
        future: coinListingsFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) => CoinListTile(snapshot.data![index]),
              separatorBuilder: (context, index) => Divider(
                height: 0,
                color: Colors.white.withAlpha(50),
              ),
            );
          } else {
            return Center(
                child: CircularProgressIndicator(
              color: Colors.white,
            ));
          }
        },
      ));
}
