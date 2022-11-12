import 'package:ama/pages/login_signuppages/loginpage.dart';
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
                Color.fromRGBO(170, 111, 69, 30),
                Color.fromRGBO(243, 235, 185, 50),
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.center,
              stops: [0.1, 0.6]),
        ),
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: Colors.transparent,
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ama_logo.png", height: 120),
                    SizedBox(height: 70),
                    SvgPicture.asset("assets/images/cc.svg"),
                    SizedBox(height: 60),
                    Text("Receive relevant information adverts",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    Text("on areas of interest and get paid",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 18)),
                    SizedBox(height: 130),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));
                      },
                      child: Text(
                        "Skip >",
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
