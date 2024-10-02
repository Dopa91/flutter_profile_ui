//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/fairytail_char.dart';

class InfoBoxItem extends StatelessWidget {
  const InfoBoxItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.profile,
  });

  final String title;
  final String subtitle;

  final FairytailChar profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(color: Colors.grey[400], fontSize: 14.0),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
