import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/UI/CustomInputField.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login App',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue,
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Material(
                  elevation: 10,
                    borderRadius: BorderRadius.all(Radius.circular(100.0)),
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50.0),
                          child: Image.asset('images/jayprofile.jpg', width: 100, height: 100,)
                      ),
                    )),
                CustomInputField(
                  Icon(Icons.person, color: Colors.white,), 'Username'
                ),
                CustomInputField(
                    Icon(Icons.lock, color: Colors.white,), 'Password'
                ),
                Container(
                  width: 150,
                  child: RaisedButton(
                    onPressed: () {},
                    color: Colors.deepOrange,
                    textColor: Colors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text('Login', style: TextStyle(
                      fontSize: 20.0
                    ),),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
