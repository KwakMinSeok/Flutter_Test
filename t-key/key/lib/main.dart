import 'package:flutter/material.dart';
import 'dart:math';
void main() => runApp(new MaterialApp(home: PositionedTiles()));

class PositionedTiles extends StatefulWidget {
 @override
 State<StatefulWidget> createState() => PositionedTilesState();
}

class PositionedTilesState extends State<PositionedTiles> {
 List<Widget> tiles = [
   StatelessColorfulTile(),
   StatelessColorfulTile(),
 ];

 @override
 Widget build(BuildContext context) {
   return Scaffold(
     body: Row(children: tiles),
     floatingActionButton: FloatingActionButton(
         child: Icon(Icons.sentiment_very_satisfied), onPressed: swapTiles),
   );
 }

 swapTiles() {
   setState(() {
     tiles.insert(1, tiles.removeAt(0));
   });
 }
}

class StatelessColorfulTile extends StatelessWidget {
 List<Color> colorlist=[Colors.pink,Colors.purple,Colors.teal,Colors.yellowAccent,Colors.black54];
 Random ran = Random(100);
 int randomnumber= ran.nextInt(100);

 @override
 Widget build(BuildContext context) {
   return Container(
       color: , child: Padding(padding: EdgeInsets.all(70.0)));
 }
}