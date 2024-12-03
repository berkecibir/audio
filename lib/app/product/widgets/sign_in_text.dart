import 'package:flutter/material.dart';

import '../../core/configs/theme/app_colors.dart';
import '../../core/widgets/navigation_helper/navigation_helper.dart';
import '../../core/utils/constants/strings.dart';
import '../../core/widgets/device_padding/device_padding.dart';
import '../../views/auth/pages/sign_in_page.dart';

Widget signInText(context) {
  return Padding(
    padding: DevicePadding.xlarge.onlyHorizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.accountText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigation.pushReplace(page: const SignInPage());
          },
          child: const Text(
            Strings.signInText,
            style: TextStyle(
              color: AppColors.primary,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              decoration: TextDecoration.underline,
              decorationColor: AppColors.primary,
            ),
          ),
        ),
      ],
    ),
  );
}
