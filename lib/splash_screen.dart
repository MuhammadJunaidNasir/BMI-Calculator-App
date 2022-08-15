import 'dart:async';
import 'package:bmi_calculator/home_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: ((context) => const HomeScreen())));
    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          Align(
            alignment: Alignment.center,
            child: Text(
              'BMI Calculator',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Colors.pink),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Image(
            image: AssetImage('assets/img1.jpg'),
          ),
        ],
      ),
    );
  }
}
