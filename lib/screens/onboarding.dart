import 'package:app_project_singin/constant.dart';
import 'package:app_project_singin/screens/login_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:app_project_singin/model/Onboarding_data.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

class Onborading extends StatefulWidget {
  const Onborading({super.key});

  @override
  State<Onborading> createState() => _OnboradingState();
}

class _OnboradingState extends State<Onborading> {
//  OnboardingData onboardingData1 = new OnboardingData();
  final PageController _controller = PageController();
  int _currentpage = 0;
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
                child: PageView.builder(
              controller: _controller,
              itemCount: onboardingData.length,
              onPageChanged: (index) {
                setState(() {
                  _currentpage = index;
                });
              },
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Gap(20),
                    Image.asset(
                      onboardingData[index].image,
                      width: 350,
                    ),
                    Gap(20),
                    Text(
                      onboardingData[index].title,
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 34, fontWeight: FontWeight.w800)),
                    ),
                  ],
                );
              },
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                      children: List.generate(
                          onboardingData.length,
                          (index) => Container(
                                margin: const EdgeInsets.only(right: 9),
                                width: _currentpage == index ? 25 : 15,
                                height: 10,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: _currentpage == index
                                        ? primaryColor
                                        : Colors.black),
                              ))),
                  GestureDetector(
                    onTap: () {
                      if (_currentpage == onboardingData.length - 1) {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => LoginScreen()));
                      } else {
                        _controller.nextPage(
                            duration: Duration(microseconds: 400),
                            curve: Curves.easeInOut);
                      }
                    },
                    child: Image.asset(
                      'assets/frame.png',
                      width: 79,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
