import 'package:ama/pages/login_signuppages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
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
                Color.fromRGBO(170, 111, 69, 1),
                Color.fromRGBO(243, 235, 185, 1),
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/images/ama_logo.png", height: 120),
                    SizedBox(height: 70),
                    SvgPicture.asset("assets/images/rr.svg"),
                    SizedBox(height: 60),
                    InkWell(
                      onTap: () {
                        Loader.show(context,
                            isSafeAreaOverlay: false,
                            progressIndicator: CircularProgressIndicator(
                              color: Colors.black,
                            ),
                            isBottomBarOverlay: false,
                            overlayFromBottom: 0,
                            themeData: Theme.of(context).copyWith(
                                colorScheme: ColorScheme.fromSwatch()
                                    .copyWith(secondary: Colors.black38)),
                            overlayColor: Color(0x99E8EAF6));

                        print("you are navigating to the Login Page");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (_) => LoginPage()));

                        Future.delayed(Duration(seconds: 5), () {
                          Loader.hide();
                        });
                      },
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        child: Center(
                          child: Text("Let\'s get started",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(188, 142, 102, 50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                    SizedBox(height: 130),
                  ],
                ),
              ),
            )));
  }
}
