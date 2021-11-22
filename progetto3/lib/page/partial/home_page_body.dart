import 'package:flutter/material.dart';
import 'package:progetto3/component/note.dart';

class HomePageBody extends StatelessWidget {
  final List<String> notes;
  final void Function(String note) onNoteDelete;

  const HomePageBody({
    required this.notes,
    required this.onNoteDelete,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "Agenda",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: notes
                    .map(
                      (note) => Note(
                        note: note,
                        onDoubleTap: () => onNoteDelete(note),
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
