import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/views/auth/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../core/configs/assets/app_vectors.dart';

class SplashPage extends StatefulWidget {
  static const String id = 'Splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    redirectToSignIn();
  }

  Future<void> redirectToSignIn() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigation.pushReplace(page: const SignInPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          AppVectors.logo,
          width: 50,
          height: 50,
        ),
      ),
    );
  }
}
