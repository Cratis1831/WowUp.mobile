import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants.dart';
import 'screens/homepage/homepage_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wowup Mobile',
      theme: ThemeData(
        primaryColor: kPrimaryColour,
        accentColor: kAccentColor,
        textTheme: TextTheme(bodyText2: GoogleFonts.roboto()),
      ),
      home: HomePage(),
    );
  }
}
