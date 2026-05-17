import 'package:app_project_singin/constant.dart';
<<<<<<< HEAD
import 'package:app_project_singin/generated/assets.dart';
import 'package:app_project_singin/screens/onboarding.dart';
=======
>>>>>>> 7db7b0b64dcf3dce3797db68b57913772eaad71b
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  void inintState(){
    super.initState();
    Future.delayed(const Duration(seconds: 1),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (c)=> Onborading()));
    }

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: Stack(
        children: [
<<<<<<< HEAD
          Center(
            child: Image.asset(Assets.splashText ,width: 271,),
          ),
          Positioned(
              top: 100,
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
              ))
=======
          Positioned(child :Image.asset('assets/splash.png'))

>>>>>>> 7db7b0b64dcf3dce3797db68b57913772eaad71b
        ],
      ),
    );
  }
}
