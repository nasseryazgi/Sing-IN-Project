import 'package:app_project_singin/constant.dart';
import 'package:app_project_singin/generated/assets.dart';
import 'package:app_project_singin/screens/onboarding.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (c) => const Onborading()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          Center(
            child: Image.asset(
              Assets.splashText,
              width: 271,
            ),
          ),
          Positioned(
              top: 130,
              left: 50,
              child: Image.asset(
                Assets.splashRight,
                height: 200,
              )),
          Positioned(
              bottom: 110,
              right: 20,
              child: Image.asset(
                Assets.splashBottom,
                height: 200,
              )),
        ],
      ),
    );
  }
}
