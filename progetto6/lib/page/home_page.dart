import 'package:flutter/material.dart';
import 'package:progetto6/page/partial/home.dart';
import 'package:progetto6/page/partial/profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("NFT Shop"),
          centerTitle: true,
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.home_outlined)),
              Tab(icon: Icon(Icons.person_outlined)),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Home(),
            Profile(),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
          backgroundColor: Colors.black,
          onPressed: () {},
          icon: Icon(Icons.attach_money),
          label: Text("Vendi NFT"),
        ),
      ),
    );
  }
}
