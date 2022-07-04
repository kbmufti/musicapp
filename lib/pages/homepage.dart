// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:musicapp/utilities/projectcards.dart';

import '../utilities/drawerpage.dart';
// import 'package:musicapp/nue_style.dart';

class song_page extends StatefulWidget {
  song_page({Key? key}) : super(key: key);

  @override
  State<song_page> createState() => _song_pageState();
}

class _song_pageState extends State<song_page> {
  final List projectCardsInfo = [
    ['Total Balance', 48000],
    ['Project one', 28000],
    ['Project two', 58000]
  ];

  List<Color> colors = [
    Color.fromARGB(160, 44, 18, 83),
    Color.fromARGB(230, 29, 23, 85),
    Color.fromARGB(172, 14, 54, 66)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          elevation: 200,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Icon(Icons.notifications),
            )
          ],
        ),
        drawer: Drawer(child: drawer_panel()),

        // pageview cards
        body: Column(
          children: [
            SizedBox(
              height: 250,
              child: PageView.builder(
                  itemCount: projectCardsInfo.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: projectcards(
                          balance: projectCardsInfo[index][1],
                          cardTitle: projectCardsInfo[index][0],
                          color: colors[index]),
                    );
                  }),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Container(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Transactions.',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ))
          ],
        ));
  }
}
