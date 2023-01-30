import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scholarship_assistance_app/myaccount.dart';
import 'package:scholarship_assistance_app/main.dart';

class Favourite extends StatelessWidget{


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saved"),
      ),
      body: Center(
        child: ElevatedButton(
          // Within the SecondScreen widget
          onPressed: () {
            // Navigate back to the first screen by popping the current route
            // off the stack.
            Navigator.pop(context);
          },
          child: const Text('Go back!'),
        ),
      ),


    );
  }


}