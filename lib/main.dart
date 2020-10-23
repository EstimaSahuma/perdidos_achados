import 'package:flutter/material.dart';
import 'package:perdidosachados/screens/Home.dart';

import 'constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perdidos&Achados',
      theme: ThemeData(
        primaryColor: Colors.blueGrey,
        accentColor: kActiveIconColor1,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: Theme.of(context).textTheme.apply(displayColor: kTestColor),
      ),
      home: Home(),
    );
  }
}