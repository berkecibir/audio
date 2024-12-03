import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AuthTextField extends StatelessWidget {
  final String hint;
  final Icon prefix;
  final TextInputType textInput;
  final bool isObscure;
  const AuthTextField({
    required this.isObscure,
    required this.hint,
    required this.prefix,
    required this.textInput,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      //padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      cursorColor: AppColors.black,
      keyboardType: textInput,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: prefix,
        prefixIconColor: Colors.grey,
        hintStyle: const TextStyle(color: Colors.grey),
        filled: true,
        fillColor: Colors.white,
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
