import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  String? email, password;

  Setting(this.email, this.password);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.cyanAccent,
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Email:$email'),
        Text('Password:$password' ?? "no"),
      ],
    ));
  }
}
