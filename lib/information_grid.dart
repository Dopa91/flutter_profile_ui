//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/fairytail_char.dart';
import 'package:miniprofile/information_item.dart';

class InformationGrid extends StatelessWidget {
  const InformationGrid({
    super.key,
    required this.profile,
  });

  final FairytailChar profile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 310.0,
      height: 290.0,
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Information",
              style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Divider(
              color: Colors.grey[300],
            ),
            InformationItem(
              icon: Icons.home,
              color: Colors.blue,
              title: "Guild",
              details: profile.guild,
            ),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
                icon: Icons.auto_awesome,
                color: Colors.yellowAccent,
                title: "Magic",
                details: profile.magic),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
              icon: Icons.favorite,
              color: Colors.pinkAccent,
              title: "Loves",
              details: profile.loves,
            ),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
                icon: Icons.people,
                color: Colors.lightGreen,
                title: "Team",
                details: profile.team),
          ],
        ),
      ),
    );
  }
}
