import 'package:flutter/material.dart';
import 'package:praktek/pages/home.dart';
import 'package:praktek/pages/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3)).then((value) => {
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => const LoginPages()),
              (route) => false)
        });
    return Scaffold(
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 3000),
          child: Image.asset(
            'assets/splash.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
