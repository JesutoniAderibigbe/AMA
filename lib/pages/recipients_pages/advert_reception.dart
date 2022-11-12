import 'dart:ui';

import 'package:fl_country_code_picker/fl_country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class AdvertReceptionPage extends StatefulWidget {
  const AdvertReceptionPage({Key? key}) : super(key: key);

  @override
  State<AdvertReceptionPage> createState() => _AdvertReceptionPageState();
}

class _AdvertReceptionPageState extends State<AdvertReceptionPage> {
  bool isChecked = false;

  bool isCheck = false;

  bool istrue = false;

  String _currentSelectedValue = "";

  var interests = ["Health", "Finance"];

  final countryPicker = const FlCountryCodePicker();
  CountryCode? countryCode;

  String _platformVersion = 'Unknown';

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
                              showDialog(
                                  context: context,
                                  builder: (_) => AlertDialog(
                                        content: Text(
                                            "Contact Jesutoni for more info...This screen requires permission and authentication. Please wait for the updates",
                                            style: GoogleFonts.poppins()),
                                        actions: [
                                          Center(
                                              child: CircularProgressIndicator(
                                                  color: Colors.red))
                                        ],
                                      ));
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
                                  Icon(FeatherIcons.download,
                                      color: Colors.white)
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
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Text("Advert Reception",
                        style: GoogleFonts.poppins(
                            color: Color.fromRGBO(185, 136, 95, 10),
                            fontWeight: FontWeight.bold,
                            fontSize: 25)),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                        "How do you want to receive the paid information ?",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 13)),
                  ),
                  CheckboxListTile(
                    tileColor: Colors.transparent,
                    activeColor: Colors.black,
                    value: isChecked,
                    onChanged: (value) {
                      setState(() {
                        isChecked = value!;
                      });
                    },
                    title: Text("SMS",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  CheckboxListTile(
                    tileColor: Colors.transparent,
                    activeColor: Colors.black,
                    value: isCheck,
                    onChanged: (value) {
                      setState(() {
                        isCheck = value!;
                      });
                    },
                    title: Text("Email",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  CheckboxListTile(
                    tileColor: Colors.transparent,
                    activeColor: Colors.black,
                    value: istrue,
                    onChanged: (value) {
                      setState(() {
                        istrue = value!;
                      });
                    },
                    title: Text("WhatsApp",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.bold, fontSize: 12)),
                  ),
                  SizedBox(height: 10),
                  Divider(
                      // thickness: 2,
                      ),
                  Center(
                    child: Container(
                      child: Column(
                        children: [
                          RichText(
                              text: TextSpan(
                                  text: "Tip: ",
                                  style: GoogleFonts.poppins(
                                      color: Color.fromRGBO(97, 93, 93, 50),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                  children: [
                                TextSpan(
                                  text: " Any of the options can be selected.",
                                  style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10),
                                )
                              ])),
                          Text(
                            "The more the chosen options, the better the benefits.",
                            style: GoogleFonts.poppins(
                                color: Color.fromRGBO(97, 93, 93, 50),
                                fontWeight: FontWeight.bold,
                                fontSize: 10),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autocorrect: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.length == 10) {
                          return "Verify Phone                                                                                Resend";
                        }
                      },
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hintText: "Active Phone Number",
                          prefixIcon: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final code = await countryPicker.showPicker(
                                        context: context);
                                    setState(() {
                                      countryCode = code;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: countryCode != null
                                              ? countryCode!.flagImage
                                              : null),
                                      SizedBox(width: 10),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                              countryCode?.dialCode ?? "+1",
                                              style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          hintStyle: GoogleFonts.titilliumWeb(
                              //   fontWeight: FontWeight.bold,

                              color: Colors.black),
                          labelText: "For SMS",
                          labelStyle: GoogleFonts.titilliumWeb(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.done,
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                            hintText: "Active Email Address",
                            hintStyle: GoogleFonts.titilliumWeb(
                                //   fontWeight: FontWeight.bold,

                                color: Colors.black),
                            labelText: "For Email",
                            labelStyle: GoogleFonts.titilliumWeb(
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                            prefixIcon: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 15, vertical: 6),
                                margin: EdgeInsets.symmetric(horizontal: 24),
                                child:
                                    Icon(Icons.email, color: Colors.black)))),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      autocorrect: true,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      validator: (value) {
                        if (value!.length == 10) {
                          return "Verify Phone                                                                                Resend";
                        }
                      },
                      keyboardType: TextInputType.number,
                      textInputAction: TextInputAction.done,
                      maxLines: 1,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                          hintText: "Active Phone Number",
                          prefixIcon: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15, vertical: 6),
                            margin: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    final code = await countryPicker.showPicker(
                                        context: context);
                                    setState(() {
                                      countryCode = code;
                                    });
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                          child: countryCode != null
                                              ? countryCode!.flagImage
                                              : null),
                                      SizedBox(width: 10),
                                      Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16, vertical: 6),
                                          decoration: BoxDecoration(
                                              color: Colors.black,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Text(
                                              countryCode?.dialCode ?? "+1",
                                              style: GoogleFonts.titilliumWeb(
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ))),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          hintStyle: GoogleFonts.titilliumWeb(
                              //   fontWeight: FontWeight.bold,

                              color: Colors.black),
                          labelText: "For WhatsApp",
                          labelStyle: GoogleFonts.titilliumWeb(
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                  ),
                  SizedBox(height: 40),
                  Divider(color: Colors.black, indent: 20, endIndent: 20),
                  SizedBox(height: 30),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: [],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text("Advert Interest",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                  ),
                  FormField(builder: (FormFieldState<String> state) {
                    return InputDecorator(
                      decoration: InputDecoration(
                        hintText:
                            "Select the type(s) of information you want to receive",
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 12, fontWeight: FontWeight.bold),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(0.0)),
                      ),
                      isEmpty: _currentSelectedValue == "",
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                              items: interests.map((String value) {
                                return DropdownMenuItem<String>(
                                    value: value, child: Text(value));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  _currentSelectedValue = newValue!;
                                  state.didChange(
                                    newValue,
                                  );
                                });
                              })),
                    );
                  }),
                  SizedBox(height: 40),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (_) => Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 30),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          labelText: 'Account Name',
                                          labelStyle: GoogleFonts.titilliumWeb(
                                              //    fontWeight: FontWeight.bold,
                                              color: Colors.black),
                                          hintText: "Access Bank",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(40))),
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText: 'Bank Name',
                                            labelStyle:
                                                GoogleFonts.titilliumWeb(
                                                    //      fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                            hintText: "Olayinka Adejoro",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40))),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.length < 10) {
                                            return "Please fill in the right account number";
                                          }
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'Account Number',
                                            labelStyle:
                                                GoogleFonts.titilliumWeb(
                                                    //      fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                            hintText: "",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40))),
                                      )),
                                  Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.length < 11) {
                                            return "Please fill in the right BVN number";
                                          }
                                        },
                                        keyboardType: TextInputType.number,
                                        decoration: InputDecoration(
                                            labelText: 'BVN NUMBER',
                                            labelStyle:
                                                GoogleFonts.titilliumWeb(
                                                    //     fontWeight: FontWeight.bold,
                                                    color: Colors.black),
                                            hintText: "",
                                            border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(40))),
                                      )),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Center(
                                    child: ElevatedButton(
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.black),
                                        child: Text(
                                          "OK",
                                          style: GoogleFonts.titilliumWeb(
                                              //     fontWeight: FontWeight.bold,
                                              color: Colors.white),
                                        )),
                                  )
                                ],
                              ));
                    },
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Bank Account Details",
                              style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.bold, fontSize: 15)),
                          Icon(Icons.ads_click)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 70)
                ]),
          ),
        ));
  }
}
