import 'package:flutter/material.dart';
import 'package:gym_app/ui/login_screen.dart';

import 'home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => const LoginScreen(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            Positioned(
                top: 20,
                left: 200,
                child: Image.asset(
                  'assets/images/people.png',
                  width: 440,
                  height: 500,
                )),
            Positioned(
                top: 100,
                left: 100,
                child: Image.asset(
                  'assets/images/basketball.png',
                  width: 140,
                  height: 100,
                )),
          ],
        ),
      ),
    );
  }
}
