import 'package:ama/pages/login_signuppages/email_verification.dart';
import 'package:ama/pages/login_signuppages/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var _passwordVisible = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _passwordVisible = false;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          FocusManager.instance.primaryFocus!.unfocus();
        });
      },
      child: Container(
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
                      child: Text("Create an account",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                    ),
                    SizedBox(height: 12),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Enter Email",
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            hintText: "abc@gmail.com",
                            suffixIcon: Icon(Icons.email),
                            suffixIconColor: Colors.black,
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            hintText: "At least 6 characters",
                            labelText: "Password",
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            labelText: "Confirm Password",
                            labelStyle:
                                GoogleFonts.poppins(color: Colors.black),
                            suffixIcon: IconButton(
                              icon: Icon(
                                  // Based on passwordVisible state choose the icon
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.black),
                              onPressed: () {
                                // Update the state i.e. toogle the state of passwordVisible variable
                                setState(() {
                                  _passwordVisible = !_passwordVisible;
                                });
                              },
                            ),
                            focusedBorder:
                                OutlineInputBorder(borderSide: BorderSide())),
                      ),
                    ),
                    SizedBox(height: 100),
                    GestureDetector(
                      onTap: () {
                        print(
                            "you are navigating to the verification account page!");
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => VerificationPage()));
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
                            child: Text("Sign Up",
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
                        Text("Have an account?",
                            style: GoogleFonts.poppins(
                                color: Colors.white, fontSize: 14)),
                        GestureDetector(
                          onTap: () {
                            print("Navigating to the sign in page");
                            Navigator.push(context,
                                MaterialPageRoute(builder: (_) => LoginPage()));
                          },
                          child: Text(" Sign In",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  decoration: TextDecoration.underline)),
                        ),
                      ],
                    ),
                  ],
                ),
              ))),
    );
  }
}
