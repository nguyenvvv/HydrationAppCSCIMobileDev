// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
//import 'package:hexcolor/hexcolor.dart';

void main() => runApp(HydrationApp());

class HydrationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Hydration Station',
        theme: ThemeData(primaryColor: Colors.blue[200]),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Hydration Center'),
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
                  child: Text('Welcome to the Hydration app!'),
                ),
              ),
              Container(
                width: 500,
                height: 100,
                color: Color(0xFFF2F1EB),
                child: Center(
                  child: Text('Before we begin, tell us about yourself.'),
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
              )
            ]),
          ),
        ));
  }
}
