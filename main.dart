import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(NEETPrepMeterApp());
}

class NEETPrepMeterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'NEET Prep Meter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF87CEEB),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xFF87CEEB),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: LoginScreen(),
    );
  }
}
