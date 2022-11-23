import 'dart:io';

import 'package:ama/pages/business_reception_pagr/advert_placement.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class BusinessPages extends StatefulWidget {
  const BusinessPages({Key? key}) : super(key: key);

  @override
  State<BusinessPages> createState() => _BusinessPageState();
}

class _BusinessPageState extends State<BusinessPages> {
//pick logo, registration proof and validity proof
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
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(170, 111, 69, 40),
      ),
      body: SingleChildScrollView(
        child: Column(
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

                        // Navigator.push(
                        //     context,
                        //     MaterialPageRoute(
                        //         builder: (_) => ClarificationPage()));
                      },
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => AdvertPlacement()));
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Business",
                style: GoogleFonts.poppins(
                    color: Color.fromRGBO(185, 136, 95, 10),
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business Name",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business Category",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business Address",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business PhoneNumber",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business Email",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: "Business Website/Social Media Address",
                  labelStyle: GoogleFonts.poppins(color: Colors.black),
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Business Logo",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  ClipOval(
                      child: (_image == null)
                          ? Image.asset("assets/images/ama_logo.png",
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Business Registration Proof",
                style: GoogleFonts.poppins(color: Colors.black, fontSize: 18),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  ClipOval(
                      child: (_image == null)
                          ? Image.asset("assets/images/ama_logo.png",
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

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ClipOval(
            //         child: (_image == null)
            //             ? SvgPicture.asset("assets/images/reg.svg", height: 80)
            //             : Image.file(
            //                 _image!,
            //                 fit: BoxFit.contain,
            //                 height: 120,
            //               )),
            //     IconButton(
            //       icon: Icon(FontAwesomeIcons.camera, size: 20.0),
            //       onPressed: () {
            //         _showImageDialog();
            //         //  getImage();
            //       },
            //     )
            //   ],
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Business Validity Proof",
                    style:
                        GoogleFonts.poppins(color: Colors.black, fontSize: 18),
                  ),
                  Text(
                      "(Picture of business, screenshot of website or media interactions, e.t.c)",
                      style: GoogleFonts.titilliumWeb(fontSize: 12)),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(alignment: Alignment.bottomRight, children: [
                  ClipOval(
                      child: (_image == null)
                          ? Image.asset("assets/images/ama_logo.png",
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
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Stack(alignment: Alignment.bottomRight, children: [
            //       ClipOval(
            //           child: (_image == null)
            //               ? SvgPicture.asset("assets/images/certifcate.svg",
            //                   height: 120)
            //               : Image.file(
            //                   _image!,
            //                   fit: BoxFit.contain,
            //                   height: 120,
            //                 )),
            //       Padding(
            //           padding: EdgeInsets.only(top: 60.0),
            //           child: IconButton(
            //             icon: Icon(FontAwesomeIcons.camera, size: 20.0),
            //             onPressed: () {
            //               _showImageDialog();
            //               //  getImage();
            //             },
            //           )),
            //     ]),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
