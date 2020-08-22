import 'package:flutter/material.dart';
import 'nextpage.dart';
import 'user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  nextpage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NextPage(
                  value: User(
                      name: namecon.text, id: idcon.text, age: agecon.text),
                )));
  }

  TextEditingController namecon = TextEditingController();
  TextEditingController idcon = TextEditingController();
  TextEditingController agecon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          TextField(
            controller: namecon,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextField(
              controller: idcon, decoration: InputDecoration(labelText: 'Id')),
          TextField(
              controller: agecon,
              decoration: InputDecoration(labelText: 'Age')),
          RaisedButton(onPressed: ()=>nextpage())
        ],
      ),
    );
  }
}
