import 'package:flutter/material.dart';


const kBackgroundColor = Color(0xFFE5F0F0);
const kActiveIconColor = Color(0xFFE68342);
const kTestColor = Color(0xFF222B45);
const kBlueLightColor = Color(0xFFC7B8F5);
const kBlueColor = Color(0xFF817DC0);
const kShadowColor = Color(0xFFD6E6E6);
const kActiveIconColor1 = Color(0x900FF5DF);

final kHintTextStyle = TextStyle(
  color: Colors.green,
  fontFamily: 'OpenSans',
);

final kLabelStyle = TextStyle(
  color: Colors.white,
  fontWeight: FontWeight.bold,
  fontFamily: 'OpenSans',
);

final kBoxDecorationStyle = BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10.0),
  boxShadow: [
    BoxShadow(
      color: Colors.black12,
      blurRadius: 6.0,
      offset: Offset(0, 2),
    ),
  ],
);