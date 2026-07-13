import 'package:flutter/material.dart';
import 'package:from_validation_learn/constant/color.dart';

class LoginField extends StatelessWidget {
  String hintText;
  LoginField({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 400),

      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.primaryGradient.first,
              width: 3,
            ),

            borderRadius: BorderRadius.circular(10),
          ),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.border, width: 3),

            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
