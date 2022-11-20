import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/src/foundation/key.dart';

import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class ClarificationPage extends StatefulWidget {
  const ClarificationPage({Key? key}) : super(key: key);

  @override
  State<ClarificationPage> createState() => _ClarificationPageState();
}

class _ClarificationPageState extends State<ClarificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(170, 111, 69, 40),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          crossAxisSpacing: 10,
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Text(
                "Personal",
                style: GoogleFonts.poppins(
                  fontSize: 24,
                  color: Color.fromRGBO(185, 136, 95, 10),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: EdgeInsets.all(10),
                child: Text("RECIPIENT'S ACCOUNT",
                    style: GoogleFonts.poppins(
                        //  color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10)),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Name",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color.fromRGBO(185, 136, 95, 10),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "",
                      style: GoogleFonts.poppins(
                        fontSize: 24,
                        color: Color.fromRGBO(185, 136, 95, 10),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
