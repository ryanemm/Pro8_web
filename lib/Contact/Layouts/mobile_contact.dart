import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pro8_tech/components/simple_button.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileContactSection extends StatefulWidget {
  const MobileContactSection({Key? key}) : super(key: key);

  @override
  _MobileContactSectionState createState() => _MobileContactSectionState();
}

class _MobileContactSectionState extends State<MobileContactSection> {
  @override
  Widget build(BuildContext context) {
    Uri myWhatsapp = Uri.parse("");
    Uri enyWhatsapp = Uri.parse("");
    return Container(
        padding: EdgeInsets.only(top: 75),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "CONTACT",
              style: GoogleFonts.ubuntu(
                  fontSize: 32,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 3, 114, 105)),
            ),
            SizedBox(height: 24),
            Text(
              "3977 Garwe Close",
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Old Windsor Park",
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Ruwa",
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "Zimbabwe",
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            SizedBox(height: 8),
            Text(
              "General Enquiries:",
              style:
                  GoogleFonts.ubuntu(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    launch("tel:+263 77 687 3460");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  // ignore: deprecated_member_use
                  onTap: () => launch("https://wa.me/+263776873460"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image.asset("assets/images/whatsapp.png", height: 24),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    launch("tel:+27 67 989 0637");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                    ],
                  ),
                ),
                SizedBox(width: 16),
                GestureDetector(
                  onTap: () => launch("https://wa.me/+27679890637"),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        Image.asset("assets/images/whatsapp.png", height: 24),
                  ),
                )
              ],
            ),
            Text(
              "Email Address:",
              style:
                  GoogleFonts.ubuntu(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 8),
            Text(
              "enquiries@pro8.tech",
              style: GoogleFonts.ubuntu(fontSize: 18),
            ),
            Container(
              padding: EdgeInsets.all(40),
              child: Column(children: [
                Text(
                  "Drop us an enquiry, we will get back to you...",
                  style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[800]),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "NAME",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 114, 105),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "CONTACT NUMBER",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 114, 105),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 16),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "EMAIL",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 114, 105),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 16),
                TextFormField(
                  maxLines: 3,
                  decoration: InputDecoration(
                      hintText: "MESSAGE",
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color.fromARGB(255, 3, 114, 105),
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
                SizedBox(height: 16),
                GestureDetector(
                  onTap: (() => Fluttertoast.showToast(
                      msg:
                          "Thank you for your enquiry. We will get back to you within 24 hours.")),
                  child: SimpleButton(
                    text: "Send",
                    shadowColor: Colors.grey.shade500,
                    buttonColor2: Color.fromARGB(255, 3, 114, 105),
                    buttonColor1: Color.fromARGB(255, 30, 235, 47),
                  ),
                ),
              ]),
            ),
            Image.asset("assets/images/skyline_grey.png"),
          ],
        ));
  }
}
