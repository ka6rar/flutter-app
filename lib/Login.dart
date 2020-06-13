import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  final GlobalKey<FormState> formState = GlobalKey<FormState>();

  String _password, _email;

  login(){
    final formdata = formState.currentState;
    if (formdata.validate()) {
      
    }

  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Container(
        child: ListView(
          children: <Widget>[
            Form(
              key: formState,
              child: Container(
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Inter Your Email',
                          icon: Icon(Icons.email)),
                      validator: ( val) {
                        if (val.isEmpty) {
                          return 'Plesse nEnter Your email';
                        } else if (val.length < 8) {
                          return 'Plesse  Semal Numbaer';
                        }
                      },
                      onSaved: (val) => _email = val,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Inter Your Password',
                          icon: Icon(Icons.vpn_key)),
                      validator: (val) {
                        if (val.isEmpty) {
                          return 'Plesse nEnter Your email';
                        } else if (val.length < 8) {
                          return 'Plesse  Semal Numbaer';
                        }
                      },
                      onSaved: (val) => _password = val ,
                    ),
                    RaisedButton(
                       onPressed: login,
                       child: Text('Login'),
                       color: Colors.blue,
                       textColor: Colors.white,
                    ), 
  
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
