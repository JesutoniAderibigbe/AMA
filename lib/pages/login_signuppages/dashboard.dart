import 'package:ama/pages/business_reception_pagr/personal_business_page.dart';
import 'package:ama/pages/recipients_pages/advert_reception.dart';
import 'package:ama/pages/recipients_pages/personal_reception.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text("Set Up Account(s)",
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                    ),
                  ),
                  SizedBox(height: 40),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => AdvertReceptionPage()));
                    },
                    child: Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        decoration: BoxDecoration(
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white),
                        child: Column(
                          children: [
                            Center(
                              child: Text("Recipient Account",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(188, 142, 102, 50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                            ),
                            Text("To Receive Ads",
                                style: GoogleFonts.poppins(
                                    color: Color.fromRGBO(97, 93, 93, 50),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12))
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  GestureDetector(
                    onTap: () {
                      print("Navigate to the hive datavasee");
                      //Navigate to the Hive database
                      showDialog(
                          context: context,
                          builder: (_) => AlertDialog(
                                content: Text(
                                    "Wait for the updates...Click to dismiss.",
                                    style: GoogleFonts.poppins()),
                                actions: [
                                  Center(
                                      child: CircularProgressIndicator(
                                          color: Colors.black))
                                ],
                              ));
                    },
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => BusinessReceptionPage()));
                      },
                      child: Center(
                        child: Container(
                          height: 50,
                          width: 300,
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(20.0),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Center(
                                child: Text("Business Account",
                                    style: GoogleFonts.poppins(
                                        color:
                                            Color.fromRGBO(188, 142, 102, 50),
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20)),
                              ),
                              Text("To Run Ads",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(97, 93, 93, 50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )));
  }
}
