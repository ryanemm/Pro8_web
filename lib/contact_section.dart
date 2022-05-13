import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 150),
      child: Row(
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONTACT",
                  style: GoogleFonts.ubuntu(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey[900]),
                ),
                SizedBox(height: 20),
                Text(
                  "If you would like to get in touch with us or you have any queries feel free to leave us a message",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[900]),
                ),
                SizedBox(height: 20),
                Form(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "NAME",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 3, 114, 105),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "CONTACT NUMBER",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 3, 114, 105),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "EMAIL",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 3, 114, 105),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      maxLines: 3,
                      decoration: InputDecoration(
                          hintText: "MESSAGE",
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Color.fromARGB(255, 3, 114, 105),
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    SizedBox(height: 20),
                    SimpleButton(
                      text: "Send",
                      shadowColor: Colors.grey.shade500,
                      buttonColor2: Color.fromARGB(255, 3, 114, 105),
                      buttonColor1: Color.fromARGB(255, 30, 235, 47),
                    )
                  ],
                ))
              ],
            ),
          ),
          SizedBox(width: 50),
          Container(
            width: 4,
            height: 500,
            color: Color.fromARGB(255, 3, 114, 105),
          ),
          SizedBox(width: 50),
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "3977 Garwe Close",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Old Windsor Park",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Ruwa",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "Zimbabwe",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
                Text(
                  "General Enquiries:",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  onTap: () {
                    launch("tel:+263 77 687 3460");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Tel: ",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800])),
                      SizedBox(height: 10),
                      Text("+263 77 687 3460",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[800],
                            //decoration: TextDecoration.underline,
                            decorationColor: Colors.grey[800],
                            decorationThickness: 2,
                          )),
                      Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 3, 114, 105),
                        // size: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset("assets/images/whatsapp.png", height: 24)
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    launch("tel:+27 67 989 0637");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Tel: ",
                          style: GoogleFonts.nunito(
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey[800])),
                      SizedBox(height: 10),
                      Text("+27 67 989 0637",
                          style: GoogleFonts.nunito(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey[800],
                            //decoration: TextDecoration.underline,
                            decorationColor: Colors.grey[800],
                            decorationThickness: 2,
                          )),
                      Icon(
                        Icons.call,
                        color: Color.fromARGB(255, 3, 114, 105),
                        // size: 30,
                      ),
                      SizedBox(width: 10),
                      Image.asset("assets/images/whatsapp.png", height: 24)
                    ],
                  ),
                ),
                Text(
                  "Email Address:",
                  style: GoogleFonts.ubuntu(
                      fontSize: 18, fontWeight: FontWeight.w600),
                ),
                Text(
                  "enquiries@pro8.tech",
                  style: GoogleFonts.ubuntu(fontSize: 18),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
