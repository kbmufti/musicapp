// ignore_for_file: prefer_const_constructors_in_immutables, camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:musicapp/nue_style.dart';

class song_page extends StatefulWidget {
  song_page({Key? key}) : super(key: key);

  @override
  State<song_page> createState() => _song_pageState();
}

class _song_pageState extends State<song_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: SizedBox(
            height: 100,
            width: 100,
            child: nueComponent(child: Icon(Icons.menu))),
      ),
    );
  }
}
