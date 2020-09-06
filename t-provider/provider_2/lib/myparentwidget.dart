import 'package:flutter/material.dart';
import 'model.dart';
import 'package:provider/provider.dart';
class MyParentWidget extends StatelessWidget {
  MyParentWidget({Key key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_)=>MyModel(26, 'kwak'),
      child: Column(
        children: [
          Expanded(child: ),
          Expanded(child: )
        ],
      ),
    );
  }
}