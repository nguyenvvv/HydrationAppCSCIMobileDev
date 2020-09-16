import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'determine_hydration.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title:
          Text('Hydration goal', style: TextStyle(fontWeight: FontWeight.bold)),
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      (MyHomePage(title: 'HydrationCenter'))));
        },
      ),
    ));
  }
}
