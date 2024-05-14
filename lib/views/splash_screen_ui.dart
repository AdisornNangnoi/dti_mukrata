// ignore_for_file: prefer_const_constructors, annotate_overrides

import 'package:dti_mukrata_app/views/home_ui.dart';
import 'package:flutter/material.dart';

class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({super.key});

  @override
  State<SplashScreenUI> createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {
  @override

void initState() {
  
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomeUi(),
        ),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.deepOrange,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: MediaQuery.of(context).size.width * 0.65,
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            CircularProgressIndicator(
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Text(
              'Tech SAU Buffet',
              style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * 0.045,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            Text(
              'Copyright © 2024 by DTI-SAU',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            
          ],
        ),
      ),
    );
  }
}
