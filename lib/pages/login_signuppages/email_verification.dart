import 'package:ama/pages/login_signuppages/dashboard.dart';
import 'package:ama/pages/login_signuppages/login_verify.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:google_fonts/google_fonts.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({Key? key}) : super(key: key);

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
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
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              toolbarHeight: 110,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Verify Email",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                  SizedBox(height: 12),
                  Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                          "We\'ve sent a verification code to your email. Kindly check to verify",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Color.fromRGBO(97, 93, 93, 50)))),
                  SizedBox(height: 80),
                  Center(
                    child: Text("Verification Code",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color.fromRGBO(97, 93, 93, 50))),
                  ),
                  SizedBox(height: 10),
                  OtpTextField(
                    numberOfFields: 4,
                    //  focusedBorderColor: Colors.black,
                    borderColor: Color(0xFF512DA8),
                    //set to true to show as box or false to show as dash
                    showFieldAsBox: true,
                    //runs when a code is typed in
                    onCodeChanged: (String code) {
                      //handle validation or checks here
                    },
                    //runs when every textfield is filled
                    onSubmit: (String verificationCode) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text("Verification Code"),
                              content:
                                  Text('Code entered is $verificationCode'),
                            );
                          });
                    }, // end onSubmit
                  ),
                  SizedBox(height: 100),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => LoginVerify()));
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        child: Center(
                          child: Text("Verify",
                              style: GoogleFonts.poppins(
                                  color: Color.fromRGBO(188, 142, 102, 50),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20)),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Didn\'t get a code?",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 14)),
                      GestureDetector(
                        onTap: () {
                          print(
                              "you are navigating to the create account page!");
                        },
                        child: Text(" Resend Code",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                                decoration: TextDecoration.underline)),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
