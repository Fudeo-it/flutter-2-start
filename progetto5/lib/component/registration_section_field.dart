import 'package:flutter/material.dart';

class RegistrationSectionField extends StatelessWidget {
  final String title;
  final Widget child;

  const RegistrationSectionField({
    required this.title,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 32, bottom: 10),
      decoration: BoxDecoration(
          border: Border(
        bottom: BorderSide(
          color: Colors.grey.shade200,
        ),
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              title.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 12,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          SizedBox(height: 5),
          child,
        ],
      ),
    );
  }
}
