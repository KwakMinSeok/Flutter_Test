import 'package:flutter/material.dart';
main(List<String> args) => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoginPage',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LOGIN'),),
      body: Form(
        key: formkey,
              child: Center(
                              child: Container(
                  width: MediaQuery.of(context).size.width* .7,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                TextFormField(
                  validator: (value){
                    if(!value.contains("@"))
                    return "Enter a valid email";
                    else
                    return '';
                  },
                  decoration: InputDecoration(
                    labelText: 'password',hintText: 'abc@example.com'
                  ),
                ),
                TextFormField(
                  validator: (value){
                    if(value.length<8)
                    return "Enter valid password";
                    else
                    return "";
                  },
                   decoration: InputDecoration(
                    labelText: 'password'
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top:14),
                  child:RaisedButton(onPressed: (){
                  formkey.currentState.validate();
                },
                child: Text('Submit'),
                ) ,
                )
                

            ],
          ),
        ),
              ),
      ),
    );
  }
}