import 'package:art_flutter/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/custom_button.dart';
import '../components/theme_selection_button.dart';
import 'home_screen.dart';

class CustomizeScreen extends StatefulWidget {
  @override
  State<CustomizeScreen> createState() => _CustomizeScreenState();
}

class _CustomizeScreenState extends State<CustomizeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Column(
            children: [
              ClipPath(
                clipper: TopWidgetClipper(),
                child: Container(
                  height: 320,
                  color: Colors.blue,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 48,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: SvgPicture.asset(
                              "assets/icons/logo-horizontal.svg",
                              width: 30,
                              height: 30,
                            ),
                          ),
                          Spacer(),
                          Padding(
                              padding: EdgeInsets.all(20),
                              child: Text("عربي",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline1),
                                  textAlign: TextAlign.left)),
                        ],
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Your Comfort Is Our Concern",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 14, color: kHeaderColor)),
                              textAlign: TextAlign.left)),
                      Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text("Customize Your App",
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 26,
                                      color: kHeaderColor,
                                      fontWeight: FontWeight.bold)),
                              textAlign: TextAlign.left)),
                    ],
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text("Right or Left handed",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline4),
                                  textAlign: TextAlign.left)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                onPressed: () {},
                                title: "Left",
                                iconPath: "assets/icons/hand_select.svg",
                                isSelected: false,
                                btnWidth: 140,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                onPressed: () {},
                                title: "Right",
                                iconPath: "assets/icons/hand_select_2.svg",
                                isSelected: true,
                                btnWidth: 140,
                              ),
                            ],
                          ),
                        ],
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.18,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text("Font Size",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline4),
                                  textAlign: TextAlign.left)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                onPressed: () {},
                                title: "Settings",
                                iconPath: "assets/icons/mobile_settings.svg",
                                isSelected: false,
                                btnWidth: 140,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              CustomButton(
                                onPressed: () {},
                                title: "App default",
                                iconPath: "assets/icons/font_select.svg",
                                isSelected: true,
                                btnWidth: 140,
                              ),
                            ],
                          ),
                        ],
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text("Biometric Login",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline4),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Lorem Ipsum donor sit",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5),
                                  textAlign: TextAlign.left)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CustomButton(
                                onPressed: () {},
                                title: "None",
                                iconPath: "assets/icons/padlock.svg",
                                isSelected: false,
                                btnWidth: 90,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CustomButton(
                                onPressed: () {},
                                title: "Fingerprint",
                                iconPath: "assets/icons/fingerprint.svg",
                                isSelected: false,
                                btnWidth: 120,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              CustomButton(
                                onPressed: () {},
                                title: "Face ID",
                                iconPath: "assets/icons/face_id.svg",
                                isSelected: true,
                                btnWidth: 100,
                              ),
                            ],
                          ),
                        ],
                      ))),
              Container(
                  padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * 0.20,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      elevation: 5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(left: 10, top: 10),
                              child: Text("Select your theme",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline4),
                                  textAlign: TextAlign.left)),
                          Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text("Lorem Ipsum donor sit",
                                  style: GoogleFonts.poppins(
                                      textStyle: Theme.of(context)
                                          .textTheme
                                          .headline5),
                                  textAlign: TextAlign.left)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ThemeSelectionButton(
                                onPressed: () {},
                                title: "Dark Blue",
                                iconPath: "assets/icons/padlock.svg",
                                isSelected: false,
                                btnWidth: 100,
                                foregroundColor: Color(0xFFFFFFFF),
                                backgroundColor: Color(0xFF0C2F6C),
                                borderColor: Color(0xFF0C2F6C),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ThemeSelectionButton(
                                onPressed: () {},
                                title: "Grey",
                                iconPath: "assets/icons/fingerprint.svg",
                                isSelected: false,
                                btnWidth: 100,
                                backgroundColor: Color(0xFF414141),
                                foregroundColor: Color(0xFFFFFFFF),
                                borderColor: Color(0xFF414141),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              ThemeSelectionButton(
                                onPressed: () {},
                                title: "White",
                                iconPath: "assets/icons/face_id.svg",
                                isSelected: true,
                                btnWidth: 100,
                                foregroundColor: kBtnTextColorSelected,
                                backgroundColor: Color(0xFFFFFFFF),
                                borderColor: kBtnBorderColor,
                              ),
                            ],
                          ),
                        ],
                      ))),
              Container(
                padding: EdgeInsets.all(20.0),
                height: 80.0,
                child: ElevatedButton(
                    style: ButtonStyle(
                        foregroundColor:
                            MaterialStateProperty.all<Color>(kBtnColorSelected),
                        backgroundColor:
                            MaterialStateProperty.all<Color>(kBtnBorderColor),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10.0)),
                                    side: BorderSide(
                                        color: kBtnBorderColor, width: 1.0)))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Go",
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(fontSize: 16))),
                        SizedBox(
                          width: 2,
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    }),
              )
            ],
          ),
          Positioned(
              top: 300,
              left: 20,
              child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text("Select Your customization options below:",
                      style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 13,
                              color: kHomeHeaderColor,
                              fontWeight: FontWeight.bold)),
                      textAlign: TextAlign.left)))
        ],
      )),
    );
  }
}

class TopWidgetClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Offset controllPoint1 = Offset(0, size.height - 100);
    Offset endPoint1 = Offset(100, size.height - 100);
    Offset controllPoint2 = Offset(size.width, size.height - 100);
    Offset endPoint2 = Offset(size.width, size.height - 200);
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controllPoint1.dx, controllPoint1.dy, endPoint1.dx, endPoint1.dy)
      ..lineTo(size.width - 100, size.height - 100)
      ..quadraticBezierTo(
          controllPoint2.dx, controllPoint2.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class ShadowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Offset controllPoint1 = Offset(0, size.height - 100);
    Offset endPoint1 = Offset(100, size.height - 100);
    Offset controllPoint2 = Offset(size.width, size.height - 100);
    Offset endPoint2 = Offset(size.width, size.height - 200);
    Path path = Path()
      ..lineTo(0, size.height)
      ..quadraticBezierTo(
          controllPoint1.dx, controllPoint1.dy, endPoint1.dx, endPoint1.dy)
      ..lineTo(size.width - 100, size.height - 100)
      ..quadraticBezierTo(
          controllPoint2.dx, controllPoint2.dy, endPoint2.dx, endPoint2.dy)
      ..lineTo(size.width, 0);

    canvas.drawShadow(path, Colors.grey[50]!, 3.0, false);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}