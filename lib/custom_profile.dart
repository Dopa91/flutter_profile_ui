//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/fairytail_char.dart';
import 'package:miniprofile/fairytail_char_memberlist.dart';
import 'package:miniprofile/info_box_item.dart';
import 'package:miniprofile/information_grid.dart';

class CustomProfileSite extends StatelessWidget {
  const CustomProfileSite({
    super.key,
    required this.counter,
    required this.profile,
  });

  final FairytailChar profile;

  final int counter;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.purple.shade800, Colors.deepPurpleAccent],
                  ),
                ),
                child: Column(children: [
                  SizedBox(
                    height: 110.0,
                  ),
                  CircleAvatar(
                    radius: 65.0,
                    backgroundImage: AssetImage(profile.image),
                    backgroundColor: Colors.white,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(profile.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    profile.occupation,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                    ),
                  )
                ]),
              ),
            ),
            Expanded(
              flex: 5,
              child: Container(
                color: Colors.grey[200],
                child: Center(
                  child: Card(
                    margin: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
                    child: InformationGrid(
                      profile: memberList[1],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.45,
          left: 20.0,
          right: 20.0,
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InfoBoxItem(
                    title: "Battles",
                    subtitle: counter.toString(),
                    profile: memberList[0],
                  ),
                  InfoBoxItem(
                    title: 'Birthday',
                    subtitle: profile.birthday,
                    profile: memberList[0],
                  ),
                  InfoBoxItem(
                    title: 'Age',
                    subtitle: profile.age.toString(),
                    profile: memberList[0],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
