import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  Count(this.count);
  @override
  Widget build(BuildContext context) {
    return Text(
      count==null?"null":"$count"
      
    );
  }
}