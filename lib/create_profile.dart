import 'package:flutter/material.dart';
import 'package:my_app/log_hydration.dart';
import 'package:my_app/main.dart';
import 'determine_hydration.dart';

class CreateProfile extends StatelessWidget {
  CreateProfile({Key key, this.friend}) : super(key: key);

  final DetermineHydration friend;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hydration goal',
            style: TextStyle(fontWeight: FontWeight.bold)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text(friend.getName() +
                ", you need to drink " +
                friend.getHydration().toString() +
                "oz of water"),
            SizedBox(height: 100),
            RaisedButton(
                textColor: Colors.black,
                color: Color(0xFF42A5F5),
                onPressed: () {
                  _pageRouteLogging(context);
                },
                child: Text("Start Logging Hydration"))
          ])),
    );
  }

  void _pageRouteLogging(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LogHydration(friend: friend),
        ));
  }
}
