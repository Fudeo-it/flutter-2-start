import 'package:flutter/material.dart';
import 'package:progetto3/page/partial/home_page_body.dart';
import 'package:progetto3/page/partial/home_page_sidebar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> notes = [];

  void onNoteCreate() {
    final note = ([
      "Comprare il latte di soia altrimenti muoio",
      "Comprare mele golden e risparmiare i soldi sui vestiti usati",
      "Fare la spesa per il cane e comprare crocchette",
      "Comprare pane per i vicini",
    ]..shuffle())
        .first;

    setState(() {
      notes.add(note);
    });
  }

  void onNoteDelete(String note) {
    setState(() {
      notes.remove(note);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            SizedBox(
                width: 100,
                height: double.infinity,
                child: HomePageSidebar(
                  onNoteCreate: onNoteCreate,
                )),
            Positioned(
                left: 60,
                right: 0,
                top: 0,
                bottom: 0,
                child: HomePageBody(
                  notes: notes,
                  onNoteDelete: onNoteDelete,
                )),
          ],
        ),
      ),
    );
  }
}
