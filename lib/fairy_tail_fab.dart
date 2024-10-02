//import 'dart:html';

import 'package:flutter/material.dart';

class FairyTailFab extends StatelessWidget {
  const FairyTailFab({
    super.key,
    required this.onTap,
  });

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onTap,
      shape: CircleBorder(),
      child: Container(
        width: 60,
        height: 60,
        child: Icon(Icons.add),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [Colors.deepPurple.shade800, Colors.deepPurpleAccent],
            )),
      ),
    );
  }
}
