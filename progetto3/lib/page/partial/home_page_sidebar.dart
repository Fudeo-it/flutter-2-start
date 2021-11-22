import 'package:flutter/material.dart';

class HomePageSidebar extends StatelessWidget {
  final void Function() onNoteCreate;
  const HomePageSidebar({required this.onNoteCreate});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.grey.shade200,
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage(
                "https://media-exp1.licdn.com/dms/image/C4E03AQHO9fs7VQUjtw/profile-displayphoto-shrink_400_400/0/1594903913636?e=1641427200&v=beta&t=GYhj_QSM0XV-G-H8K_u-YPp1pfOo8jrCdx1Z7YSXCLI",
              ),
            ),
            IconButton(
              onPressed: onNoteCreate,
              iconSize: 30,
              icon: Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}
