import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class FinalOnboarding extends StatefulWidget {
  const FinalOnboarding({Key? key}) : super(key: key);

  @override
  State<FinalOnboarding> createState() => _FinalOnboardingState();
}

class _FinalOnboardingState extends State<FinalOnboarding> {
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
                children: [
                  Image.asset("assets/images/ama_logo.png", height: 120),
                  SizedBox(height: 70),
                  SvgPicture.asset("assets/images/rr.svg"),
                  SizedBox(height: 60),
                  Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.white),
                    child: Center(
                      child: Text("Let\'s get you started",
                          style: GoogleFonts.poppins(
                              color: Color.fromRGBO(188, 142, 102, 50),
                              fontWeight: FontWeight.bold,
                              fontSize: 20)),
                    ),
                  ),
                  SizedBox(height: 130),
                ],
              ),
            )));
  }
}
