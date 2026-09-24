import 'dart:async';
import 'package:flutter/material.dart';
import 'main.dart'; // so it can use MyHomePage

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomeScreen(),  // ✅ fixed
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: const Center(
          child: Text(
            "Mobile Bundles App",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

