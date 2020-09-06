import 'package:flutter/material.dart';
import 'model.dart';
import 'myparentwidget.dart';
void main()=> runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyParentWidget(),
    );
  }
}
