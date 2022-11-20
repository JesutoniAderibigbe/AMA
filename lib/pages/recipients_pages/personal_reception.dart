import 'dart:async';
import 'dart:io';

import 'package:ama/pages/recipients_pages/clarification_reception_page.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class PersonalReceptionPage extends StatefulWidget {
  const PersonalReceptionPage({Key? key}) : super(key: key);

  @override
  State<PersonalReceptionPage> createState() => _PersonalReceptionPageState();
}

class _PersonalReceptionPageState extends State<PersonalReceptionPage> {
//Country Picker
  String countryValue = "";
  String? stateValue = "";
  String? cityValue = "";
  String? address = "";

  File? _image;
  String? imageUrl;

  //dialog box for the profile Picture

  void _showImageDialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              title:
                  Text("Please choose an option", style: GoogleFonts.poppins()),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  InkWell(
                      onTap: () {
                        _getFromCamera();
                        // get from Camera
                      },
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.camera, color: Colors.black)),
                          Text("Camera", style: TextStyle(color: Colors.black))
                        ],
                      )),
                  SizedBox(height: 40),
                  InkWell(
                      onTap: () {
                        _getFromGallery();
                        //get from Gallery
                      },
                      child: Row(
                        children: [
                          Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Icon(Icons.image, color: Colors.black)),
                          Text("Gallery", style: TextStyle(color: Colors.black))
                        ],
                      ))
                ],
              ));
        });
  }

  _getFromCamera() async {
    final pickedFile = await ImagePicker().getImage(source: ImageSource.camera);
    _cropImage(pickedFile!.path);
    Navigator.pop(context);
  }

  void _getFromGallery() async {
    final pickedFile =
        await ImagePicker().getImage(source: ImageSource.gallery);
    _cropImage(pickedFile!.path);
    Navigator.pop(context);
  }

  void _cropImage(filePath) async {
    CroppedFile? croppedImage = await ImageCropper()
        .cropImage(sourcePath: filePath, maxHeight: 1080, maxWidth: 1080);

    if (croppedImage != null) {
      setState(() {
        _image = File(croppedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(170, 111, 69, 40),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            FocusManager.instance.primaryFocus!.unfocus();
          });
        },
        child: SingleChildScrollView(
          child: Column(
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
                        onTap: () {
                          print("Navigate to the hive datavasee");
                          //Navigate to the Hive database
                          // showDialog(
                          //     context: context,
                          //     builder: (_) => AlertDialog(
                          //           content: Text(
                          //               "Contact Jesutoni for more info...This screen requires permission and authentication. Please wait for the updates",
                          //               style: GoogleFonts.poppins()),
                          //           actions: [
                          //             Center(
                          //                 child: CircularProgressIndicator(
                          //                     color: Colors.red))
                          //           ],
                          //         ));

                          //Navigating to the next page

                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ClarificationPage()));
                        },
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
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Personal",
                    style: GoogleFonts.poppins(
                        color: Color.fromRGBO(185, 136, 95, 10),
                        fontWeight: FontWeight.bold,
                        fontSize: 25)),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    labelStyle: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Age",
                    labelStyle: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Gender",
                    labelStyle: GoogleFonts.poppins(color: Colors.black),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: CSCPicker(
                  ///Enable disable state dropdown [OPTIONAL PARAMETER]
                  showStates: true,

                  /// Enable disable city drop down [OPTIONAL PARAMETER]
                  showCities: true,

                  ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                  flagState: CountryFlag.DISABLE,

                  ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1)),

                  ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                  disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey.shade300,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1)),

                  ///placeholders for dropdown search field
                  countrySearchPlaceholder: "Country",
                  stateSearchPlaceholder: "State",
                  citySearchPlaceholder: "City",

                  ///labels for dropdown
                  countryDropdownLabel: "Country",
                  stateDropdownLabel: "State of Residence",
                  cityDropdownLabel: "City",

                  ///Default Country
                  //defaultCountry: DefaultCountry.India,

                  ///Disable country dropdown (Note: use it with default country)
                  //disableCountry: true,

                  ///selected item style [OPTIONAL PARAMETER]
                  selectedItemStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 15,
                  ),

                  ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                  dropdownHeadingStyle: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),

                  ///DropdownDialog Item style [OPTIONAL PARAMETER]
                  dropdownItemStyle: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///Dialog box radius [OPTIONAL PARAMETER]
                  dropdownDialogRadius: 10.0,

                  ///Search bar radius [OPTIONAL PARAMETER]
                  searchBarRadius: 10.0,

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      countryValue = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value;
                    });
                  },

                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value;
                    });
                  },
                ),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Text("Profile Picture",
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(alignment: Alignment.bottomRight, children: [
                    ClipOval(
                        child: (_image == null)
                            ? SvgPicture.asset("assets/images/Profile.svg",
                                height: 140)
                            : Image.file(
                                _image!,
                                fit: BoxFit.contain,
                                height: 120,
                              )),
                    Padding(
                        padding: EdgeInsets.only(top: 60.0),
                        child: IconButton(
                          icon: Icon(FontAwesomeIcons.camera, size: 20.0),
                          onPressed: () {
                            _showImageDialog();
                            //  getImage();
                          },
                        )),
                  ]),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
