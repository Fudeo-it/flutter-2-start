import 'package:flutter/material.dart';

class CharacterStatEditor extends StatefulWidget {
  final String label;
  final int initialValue;

  const CharacterStatEditor({
    required this.label,
    required this.initialValue,
  });

  @override
  _CharacterStatEditorState createState() => _CharacterStatEditorState();
}

class _CharacterStatEditorState extends State<CharacterStatEditor> {
  late int value;

  @override
  void initState() {
    value = widget.initialValue;
    super.initState();
  }

  void onIncrement() {
    setState(() {
      value += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(
        value.toString(),
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.blue,
        ),
      ),
      title: Text(widget.label),
      trailing: ElevatedButton(
        onPressed: onIncrement,
        child: Icon(
          Icons.add,
          size: 16,
        ),
      ),
    );
  }
}
