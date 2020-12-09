import 'package:flutter/material.dart';
import 'package:my_app/main.dart';
import 'determine_hydration.dart';

class LogHydration extends StatelessWidget {
  LogHydration({Key key, this.friend}) : super(key: key);

  final DetermineHydration friend;
  TextEditingController waterController = new TextEditingController();
  var result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logging Hydration',
            style: TextStyle(fontWeight: FontWeight.bold)),
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
      ),
      body: new Center(
          child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
            Text("You still need to drink " +
                friend.getHydration().toString() +
                "oz of water"),
            SizedBox(height: 100),
            RaisedButton(
                textColor: Colors.black,
                color: Color(0xFF42A5F5),
                onPressed: () {
                  _displayDialog(context);
                },
                child: Text("Add Water"))
          ])),
    );
  }

  _displayDialog(BuildContext context) async {
    return await showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Add Water Intake'),
            content: TextField(
              controller: waterController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(hintText: "Enter your number"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Submit'),
                onPressed: () {
                  Navigator.of(context).pop(waterController.text);
                },
              )
            ],
          );
        });
  }
}
