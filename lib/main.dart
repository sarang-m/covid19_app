import 'package:covid19/constants/constants.dart';
import 'package:covid19/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Covid-19",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: KBackgroundColor,
        fontFamily: "Poppins",
        textTheme: TextTheme(
          bodyText2: TextStyle(color: KBodyTextColor),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
