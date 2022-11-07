import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
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
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/ama_logo.png", height: 120),
                  SizedBox(height: 70),
                  SvgPicture.asset(
                    "assets/images/mm.svg",
                  ),
                  SizedBox(height: 60),
                  Text("Get your business right in the",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("face of prospective customers",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  SizedBox(height: 30),
                  Text("(Send an advert directly into their phones",
                      style:
                          TextStyle(color: Color.fromRGBO(170, 111, 69, 100))),
                  Text("as an SMS,Emails or WhatsApp DM)",
                      style:
                          TextStyle(color: Color.fromRGBO(170, 111, 69, 100))),
                  SizedBox(height: 130),
                  Text(
                    "Skip >",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )));
  }
}
