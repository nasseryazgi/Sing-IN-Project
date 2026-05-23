import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_text.dart';
import '../widgets/custom_textformfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Gap(80),
            Image.asset(
              'assets/loginscreen.png',
              width: 200,
              height: 173,
            ),
            Gap(20),
            CustomText(
              text: 'Welcome Back',
            ),
            Text(
              'sign in to access your account',
              style:
                  GoogleFonts.mulish(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            Gap(20),
            const CustomTextFormFIeld(
                suffixIcon: Icons.email_outlined,
                hinitText: 'Enter Your Email'),
            Gap(17),
            const CustomTextFormFIeld(
                suffixIcon: Icons.visibility_off,
                hinitText: 'Enter Your Password'),
            Gap(10),
            Padding(

              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Transform.scale(
                        scale: 0.7,
                        child: Checkbox(
                            value: isChecked,
                            onChanged: (value) {
                              isChecked = value!;
                              setState(() {});
                            }),
                      ),
                      Text(
                        'Remember me',
                        style: GoogleFonts.poppins(fontSize: 9),
                      )
                    ],
                  ) ,
                  const Text('Forget password ?' ,style: TextStyle(color: Colors.red ,fontSize: 9),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
