// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(primaryColor: Colors.lightBlue[300]),
      home: MyHomePage(title: 'HydrationCenter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "";

  void _DisplayName(name) {
    setState(() {
      _name = name;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Text(widget.title, style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Container(
            child: Image.asset(
              'assets/images/hydrationlogo.png',
              fit: BoxFit.none,
            ),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                colors: <Color>[
                  Color(0xFF0D47A1),
                  Color(0xFF1976D2),
                  Color(0xFF42A5F5),
                  Color(0xFFACE9F2),
                  Color(0xFFF2F1EB),
                ],
              ),
            ),
            padding: const EdgeInsets.all(10.0),
          ),
          Container(
            width: 500,
            height: 100,
            color: Color(0xFFF2F1EB),
            child: Center(
              child: Text('Welcome to the Hydration tracker!',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            color: Color(0xFFF2F1EB),
            child: Center(
              child: Text('Scroll down to tell us about yourself.',
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            color: Color(0xFFF2F1EB),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: 'Name: '),
                maxLength: 50,
              ),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            color: Color(0xFFF2F1EB),
            child: Center(
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Body Weight (in lbs): '),
                maxLength: 50,
              ),
            ),
          ),
          Container(
            width: 500,
            height: 100,
            color: Color(0xFFF2F1EB),
            child: Center(
                child: FloatingActionButton(
                    child: Icon(Icons.forward), onPressed: () {})),
          ),
        ]),
      ),
    );
  }
}
