import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class SignButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  const SignButton({
    super.key,
    required this.buttonTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(
              color: AppColors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
