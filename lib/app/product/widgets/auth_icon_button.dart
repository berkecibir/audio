import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthIconButton extends StatelessWidget {
  final String iconPath;
  final VoidCallback onTap;

  const AuthIconButton({
    super.key,
    required this.iconPath,
    required this.onTap,
  });

  // factory => farklı kullanım durumları için özelleştirilmiş widgetlar oluşturulur

  factory AuthIconButton.apple({required VoidCallback onTap}) {
    return AuthIconButton(
      iconPath: AppVectors.appleIcon,
      onTap: onTap,
    );
  }

  factory AuthIconButton.facebook({required VoidCallback onTap}) {
    return AuthIconButton(
      iconPath: AppVectors.facebookIcon,
      onTap: onTap,
    );
  }

  factory AuthIconButton.google({required VoidCallback onTap}) {
    return AuthIconButton(
      iconPath: AppVectors.googleIcon,
      onTap: onTap,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
          color: Colors.white,
          shape: BoxShape.rectangle,
        ),
        child: SvgPicture.asset(
          iconPath,
          height: 30,
          width: 30,
          fit: BoxFit.scaleDown,
        ),
      ),
    );
  }
}
