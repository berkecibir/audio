import 'package:flutter/material.dart';

import '../../core/configs/theme/app_colors.dart';
import '../../core/widgets/navigation_helper/navigation_helper.dart';
import '../../core/utils/constants/strings.dart';
import '../../core/widgets/device_padding/device_padding.dart';
import '../../views/auth/pages/sign_up_page.dart';

Widget signUpText(
  context,
) {
  return Padding(
    padding: DevicePadding.xlarge.onlyHorizontal,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Strings.didNotAccountText,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.white,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigation.pushReplace(page: const SignUpPage());
          },
          child: const Text(
            Strings.signUpText,
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
