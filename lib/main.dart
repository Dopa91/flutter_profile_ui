//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:miniprofile/info_box_item.dart';
import 'package:miniprofile/information_grid.dart';
//import 'package:miniprofile/information_item.dart';

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

class _ProfileState extends State<Profile> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Stack(
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
                      backgroundImage: AssetImage('assets/erza.jpg'),
                      backgroundColor: Colors.white,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text('Erza Scarlet',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        )),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'S Class Mage',
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
                      child: InformationGrid(),
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
                    ),
                    InfoBoxItem(
                      title: 'Birthday',
                      subtitle: 'April 7th',
                    ),
                    InfoBoxItem(
                      title: 'Age',
                      subtitle: '19 yrs',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
