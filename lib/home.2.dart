import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Result:108',
          style: TextStyle(color: Color.fromARGB(255, 83, 206, 147)),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 248, 246, 246),
    );
  }
}
