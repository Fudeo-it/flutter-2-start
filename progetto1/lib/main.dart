import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Progetto1"),
        centerTitle: true,
      ),
      body: Center(
          child: Text(
        "Qui non c'è ancora niente!",
        style: TextStyle(
          color: Colors.grey.shade400,
          fontSize: 20,
        ),
      )),
    );
  }
}
