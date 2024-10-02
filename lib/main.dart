//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/custom_profile.dart';
import 'package:miniprofile/fairy_tail_fab.dart';
import 'package:miniprofile/fairytail_char_memberlist.dart';

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
    CustomProfileSite(counter: counter, profile: memberList[1]),
    CustomProfileSite(counter: counter, profile: memberList[0]),
    CustomProfileSite(counter: counter, profile: memberList[2])
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
          NavigationDestination(icon: Icon(Icons.person), label: "Natsu"),
        ],
      ),
      floatingActionButton: FairyTailFab(onTap: () {}),
      body: widgets[currentIndex],
    );
  }
}
