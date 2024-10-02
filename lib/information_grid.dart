//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/information_item.dart';

class InformationGrid extends StatelessWidget {
  const InformationGrid({
    super.key,
  });

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
              details: "FairyTail, Magnolia",
            ),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
              icon: Icons.auto_awesome,
              color: Colors.yellowAccent,
              title: "Magic",
              details: "Spatial & Sword Magic, Telekinesis",
            ),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
              icon: Icons.favorite,
              color: Colors.pinkAccent,
              title: "Loves",
              details: "Eating cakes",
            ),
            SizedBox(
              height: 20.0,
            ),
            InformationItem(
              icon: Icons.people,
              color: Colors.lightGreen,
              title: "Team",
              details: "Team Natsu",
            ),
          ],
        ),
      ),
    );
  }
}
