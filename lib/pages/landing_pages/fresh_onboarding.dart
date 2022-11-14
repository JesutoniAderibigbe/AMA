import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [
              Color.fromRGBO(170, 111, 69, 30),
              Color.fromRGBO(243, 235, 185, 50),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.center,
            stops: [0.1, 0.6]),
      ),
    );
  }
}
