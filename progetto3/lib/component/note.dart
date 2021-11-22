import 'package:flutter/material.dart';

class Note extends StatelessWidget {
  final String note;
  final void Function() onDoubleTap;

  const Note({required this.note, required this.onDoubleTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onDoubleTap,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 5,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Text(
          note,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
