import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertPlacement extends StatefulWidget {
  const AdvertPlacement({Key? key}) : super(key: key);

  @override
  State<AdvertPlacement> createState() => _AdvertPlacementState();
}

class _AdvertPlacementState extends State<AdvertPlacement> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(170, 111, 69, 40),
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 80,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(20.0),
                          color: Color.fromRGBO(185, 136, 95, 10)),
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Save",
                                    style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10)),
                              ),
                              Icon(FeatherIcons.download, color: Colors.white)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text("RECIPIENT'S ACCOUNT",
                        style: GoogleFonts.poppins(
                            //  color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10)),
                  )
                ],
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text("Advert Placement",
                    style: GoogleFonts.titilliumWeb(
                        color: Color.fromRGBO(185, 136, 95, 10),
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Container(
                    height: 30,
                    width: 150,
                    decoration: BoxDecoration(
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color.fromRGBO(185, 136, 95, 10)),
                    child: Center(
                      child: Text("Contents & Channels",
                          style: GoogleFonts.titilliumWeb(
                              color: Colors.white,
                              fontWeight: FontWeight.bold)),
                    )),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Text(
                    "Choose any of all of the channels to run your advert & add your content",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.titilliumWeb(
                        color: Colors.black, fontSize: 13)),
              ),
              CheckboxListTile(
                value: isChecked,
                onChanged: (value) {
                  setState(() {
                    isChecked = value!;
                  });
                },
                title: Text("RUN SMS ADVERT",
                    style:
                        GoogleFonts.titilliumWeb(fontWeight: FontWeight.bold)),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: "Title"),
              )
            ]));
  }
}
