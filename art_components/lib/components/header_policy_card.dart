library art_components;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../models/button_list.dart';

class HeaderPolicyCard extends StatelessWidget {
  HeaderPolicyCard();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height*0.13,
        child: Card(
          color: notificationTabCircle,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          elevation: 5,
          child: Stack(
            children: [
              Padding(padding: EdgeInsets.only(left: 10,top: 5,bottom: 5),child: Column(
                children: [
                  policyItems("Policy Number", "PDPC-MTS-203050-523-552"),
                  policyItems("Expiry Date", "20-10-2023"),
                  policyItems("Policy Type", "Multi-vehicle"),
                  policyItems("Coverage", "Comprehensive")
                ],
              ),),
              Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5,bottom: 5),
                  child: RenewalButton(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget policyItems(String key, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(key,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 12, color: kHeaderColor)),
            textAlign: TextAlign.left),
        Text(":",style: TextStyle(fontSize: 12, color: kHeaderColor)),
        Text(value,
            style: GoogleFonts.poppins(
                textStyle: TextStyle(fontSize: 12, color: notificationTextColor)),
            textAlign: TextAlign.left)
      ],
    );
  }
}

class RenewalButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.20,
      height: 30,
      child: ElevatedButton(
          child: Text("Renew",
              style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12))),
          style: ButtonStyle(
              foregroundColor:
                  MaterialStateProperty.all<Color>(kRenewalBtnForeColor),
              backgroundColor:
                  MaterialStateProperty.all<Color>(kRenewalBtnBackColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0)),
                      side: BorderSide(color: kRenewalBtnBackColor)))),
          onPressed: () {}),
    );
  }
}
