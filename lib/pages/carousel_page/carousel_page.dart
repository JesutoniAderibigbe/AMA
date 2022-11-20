import 'package:ama/pages/login_signuppages/signup_page.dart';
import 'package:ama/pages/pagebuilder/pagebuilder.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      centered: true,
      splash: SingleChildScrollView(
        child: Column(
          children: [
            Lottie.asset('assets/images/cycle.json'),
            Text(
              "Loading...",
              style: GoogleFonts.poppins(color: Colors.white, fontSize: 12),
            )
          ],
        ),
      ),
      splashIconSize: 400,
      backgroundColor: Colors.black,
      pageTransitionType: PageTransitionType.leftToRight,
      nextScreen: SignUpPage(),
      duration: 15000,
      animationDuration: Duration(seconds: 6),
    );
  }
}
