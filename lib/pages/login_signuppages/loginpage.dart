import 'package:ama/pages/login_signuppages/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isChecked = false;
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
                    child: Text("Welcome Back",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                  SizedBox(height: 12),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Enter Email",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),

                  Row(
                    children: [
                      Checkbox(
                        // tileColor: Colors.transparent,
                        activeColor: Colors.black,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      Text("Remember Me",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 10)),
                      SizedBox(width: 160),
                      Text("Forgot Password?",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 10)),
                    ],
                  ),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     CheckboxListTile(
                  //         value: isChecked,
                  //         onChanged: (value) {
                  //           setState(() {
                  //             isChecked = value!;
                  //           });
                  //         },
                  //         title: Text("Remember Me",
                  //             style: GoogleFonts.poppins(
                  //                 fontWeight: FontWeight.bold))),
                  //     Text("Forgot Password",
                  //         style: GoogleFonts.poppins(
                  //             color: Colors.white, fontSize: 10)),
                  //   ],
                  // ),
                  SizedBox(height: 100),
                  InkWell(
                    onTap: () {
                      print("Navigate to the hive datavasee");
                      //Navigate to the Hive database
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                content: Text(
                                    "This screen is currently in progress... Wait for further updates. You can click on any part of the screen to dismiss",
                                    style: GoogleFonts.poppins()),
                                actions: [
                                  Center(
                                      child: CircularProgressIndicator(
                                          color:
                                              Color.fromRGBO(170, 111, 69, 50)))
                                ],
                              ));
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
                          child: Text("Login",
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
                      Text("Don't have an account?",
                          style: GoogleFonts.poppins(
                              color: Colors.white, fontSize: 14)),
                      GestureDetector(
                        onTap: () {
                          print(
                              "you are navigating to the create account page!");
                          Navigator.push(context,
                              MaterialPageRoute(builder: (_) => SignUpPage()));
                        },
                        child: Text(" Create one",
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
