//import 'dart:html';

import 'package:flutter/material.dart';

class InformationItem extends StatelessWidget {
  const InformationItem({
    super.key,
    required this.icon,
    required this.title,
    required this.details,
    required this.color,
  });

  final IconData icon;
  final Color color;
  final String title;
  final String details;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(
          icon,
          color: color,
          size: 35,
        ),
        SizedBox(
          width: 20.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 15.0,
              ),
            ),
            Text(
              details,
              style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey[400],
              ),
            )
          ],
        )
      ],
    );
  }
}
