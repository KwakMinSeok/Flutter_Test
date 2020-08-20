import 'package:flutter/material.dart';
class MyNewCard extends StatefulWidget {
  final newq;
  final Function newdelete;
  final Function addnewbluetile;
  MyNewCard({this.newq,this.newdelete,this.addnewbluetile});
  @override
  _MyNewCardState createState() => _MyNewCardState(q: newq,delete: newdelete,addbluetile: addnewbluetile);
}

class _MyNewCardState extends State<MyNewCard> {
  Color mycolor;
  bool colorvalue=true;
  final q;
  final Function delete;
  final Function addbluetile;
  _MyNewCardState({@required this.q,this.delete,this.addbluetile});
  @override
  Widget build(BuildContext context) {
    return Card(
      
      color: mycolor,
        child: ListTile(
          
      title: Text(q.toString()),
      trailing: IconButton(
        icon: Icon(Icons.add),
        onPressed: (){},
      ),
      onLongPress: (){
        delete();
        
      },
      onTap: (){
        setState(() {
          addbluetile(colorvalue);
        if(colorvalue==true){
          mycolor=Colors.blue;
          return colorvalue=false;
        }if(colorvalue==false){
          mycolor= Colors.white;
          return colorvalue=true;
        }
        });
        
      },
    ));
  }
}