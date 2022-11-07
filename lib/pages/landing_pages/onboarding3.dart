import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage2 extends StatefulWidget {
  const OnBoardingPage2({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage2> createState() => _OnBoardingPage2State();
}

class _OnBoardingPage2State extends State<OnBoardingPage2> {
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
                  SvgPicture.asset("assets/images/cc.svg"),
                  SizedBox(height: 60),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                        "Receive relevant information adverts on areas of interest and get paid",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                  ),
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
