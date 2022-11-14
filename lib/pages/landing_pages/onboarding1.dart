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
            Color.fromRGBO(255, 255, 255, 1),
            Color.fromRGBO(194, 152, 112, 1),
          ],
          // begin: Alignment.center,
          // end: Alignment.centerRight,
          // stops: [0.1, 0.1]
        ),
      ),
      child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              children: [
                SizedBox(height: 40),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset("assets/images/ama_logo.png"),
                    Text(
                      "AMA",
                      style: GoogleFonts.poppins(
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(117, 81, 50, 1)),
                    ),
                    Text("Marketing App",
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(117, 81, 50, 1),
                            fontSize: 15))
                  ],
                ),
                SizedBox(height: 120),
                Text("Welcome",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(170, 111, 69, 1),
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                SizedBox(height: 30),
                Text("Let\'s AMA",
                    textAlign: TextAlign.center,
                    textWidthBasis: TextWidthBasis.parent,
                    style: GoogleFonts.poppins(
                      letterSpacing: 10,
                      color: Color.fromRGBO(117, 81, 50, 1),
                      fontSize: 20,
                    )),
                SizedBox(height: 200),
                RichText(
                    text: TextSpan(
                        text: "Powered by",
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12),
                        children: [
                      TextSpan(
                        text: " Alagabata.ng",
                        style: GoogleFonts.poppins(fontSize: 12),
                      )
                    ])),
              ],
            ),
          )),
    );
  }
}
