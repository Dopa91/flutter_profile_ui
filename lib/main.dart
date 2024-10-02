//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/custom_profile_erza.dart';
import 'package:miniprofile/custom_profile_happy.dart';
import 'package:miniprofile/fairytail_char_memberlist.dart';
import 'package:miniprofile/info_box_item.dart';
import 'package:miniprofile/information_grid.dart';
import 'package:miniprofile/information_item.dart';

void main() {
  runApp(MaterialApp(
    home: Profile(),
    theme: ThemeData(fontFamily: 'Poppins'),
  ));
}

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

int counter = 0;

class _ProfileState extends State<Profile> {
  final List<Widget> widgets = [
    CustomProfileSiteErza(counter: counter, profile: memberList[1]),
    CustomProfileSiteHappy(counter: counter, profile: memberList[0])
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: (index) {
          currentIndex = index;
          setState(() {});
        },
        destinations: [
          NavigationDestination(icon: Icon(Icons.person_2), label: "Erza"),
          NavigationDestination(
              icon: Icon(Icons.catching_pokemon), label: "Happy"),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter = counter + 1;
          });
        },
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
      ),
      body: widgets[currentIndex],
    );
  }
}
