import 'dart:async';
import 'package:flutter/material.dart';
import 'package:universe2024/pages/loginpage.dart';
import 'package:universe2024/pages/new.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => loginpage(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logowhite.png',
                  width: 400, // Adjust size as needed
                  height: 200,
                ),
                SizedBox(height: 300), // Add spacing between logo and text
              ],
            ),
            // Add spacing between logo and text
            Text(
              "UniVerse",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
