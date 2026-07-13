import 'package:flutter/material.dart';
import 'package:from_validation_learn/constant/color.dart';
import 'package:from_validation_learn/widget/gradiant_button.dart';
import 'package:from_validation_learn/widget/login_field.dart';
import 'package:from_validation_learn/widget/social_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/signin_balls.png"),

            Text(
              "Sing in",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ),

            SizedBox(height: height * 0.05),

            SocialButton(
              onPressed: () {},

              iconPath: 'assets/svg/g_logo.svg',
              label: 'Continue with Google',
              horizantalPadding: 100,
            ),

            SizedBox(height: height * 0.02),
            SocialButton(
              iconPath: 'assets/svg/f_logo.svg',
              label: 'Continue with Facebook',
              horizantalPadding: 90,

              onPressed: () {},
            ),

            SizedBox(height: height * 0.02),

            Text('or', style: TextStyle(fontSize: 24, color: AppColors.white)),

            SizedBox(height: height * 0.02),

            LoginField(hintText: 'Email'),

            SizedBox(height: height * 0.02),
            LoginField(hintText: 'Password'),

            SizedBox(height: height * 0.02),

            GradiantButton(),
          ],
        ),
      ),
    );
  }
}
