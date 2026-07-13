import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:from_validation_learn/constant/color.dart';

class SocialButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final double horizantalPadding;

  final VoidCallback onPressed;
  const SocialButton({
    super.key,
    required this.iconPath,
    required this.label,
    required this.horizantalPadding,

    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onPressed,

      icon: SvgPicture.asset(
        iconPath,
        width: 25,
        colorFilter: ColorFilter.mode(AppColors.white, BlendMode.srcIn),
      ),
      label: Text(
        label,
        style: TextStyle(fontSize: 17, color: AppColors.white),
      ),

      style: TextButton.styleFrom(
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: horizantalPadding,
        ),

        shape: RoundedRectangleBorder(
          side: BorderSide(color: AppColors.border, width: 3),

          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
