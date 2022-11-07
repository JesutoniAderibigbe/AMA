import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPage3 extends StatefulWidget {
  const OnBoardingPage3({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage3> createState() => _OnBoardingPage3State();
}

class _OnBoardingPage3State extends State<OnBoardingPage3> {
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
                  SvgPicture.asset("assets/images/jj.svg"),
                  SizedBox(height: 60),
                  Text("Get an extra free advert here on",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20)),
                  Text("the AMA App upon each Ad you run",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.bold, fontSize: 20)),
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
