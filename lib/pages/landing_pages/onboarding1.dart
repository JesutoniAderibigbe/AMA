import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromRGBO(170, 111, 69, 100),
                Color.fromRGBO(243, 236, 184, 100),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              stops: [0.1, 0.6]),
        ),
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                /// crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/images/ama_logo.png"),
                  GradientText(
                    'AMA',
                    style:
                        TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold),
                    colors: [
                      Color.fromRGBO(255, 255, 255, 100),
                      Color.fromRGBO(194, 152, 112, 100)
                    ],
                  ),
                  Text("Alagbata Marketing App"),
                  SizedBox(height: 40),
                  Text("Welcome",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 30)),
                  Text("Let\'s AMA", style: GoogleFonts.poppins(fontSize: 20)),
                ],
              ),
            )));
  }
}
