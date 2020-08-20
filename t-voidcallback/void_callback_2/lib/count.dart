import 'package:flutter/material.dart';

class Count extends StatelessWidget {
  final int count;
  final VoidCallback onCountSelected;
  final Function(int) onCountChanged;
// Function을 보낼 수 있다.

  Count({@required this.count, this.onCountSelected,@required this.onCountChanged});
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:  MainAxisAlignment.center,
          children: <Widget>[
           IconButton(
             onPressed: ()=>onCountChanged(1),
             icon: Icon(Icons.add),
           ),
      FlatButton(
        child:  Text(
        count==null?"null":"$count",
        textAlign: TextAlign.center,
      ),
        onPressed: ()=>onCountSelected(
          
        )
      ),
      IconButton(
             onPressed: ()=>onCountChanged(-1),
             icon: Icon(Icons.remove),
           ),
      
          ],
    );
  }
}