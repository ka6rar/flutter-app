
import 'package:flutter/material.dart';
import './Login.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Container(
       padding: EdgeInsets.only(left: 150),
        child: Column(
          
          children: <Widget>[
           FlatButton(
             
             color: Colors.greenAccent,
             onPressed: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: (context) => Login()
               ));
             },
              child: Text('Login')
              
              )
          ],
        ),
      ),
    );
  }
}