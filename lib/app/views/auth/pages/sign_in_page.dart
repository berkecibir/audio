import 'package:audio/app/core/utils/constants/text_style.dart';
import 'package:audio/app/product/widgets/sign_button.dart';
import 'package:flutter/material.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/widgets/device_padding/device_padding.dart';
import '../../../product/widgets/auth_text_field.dart';
import '../../../product/widgets/sign_up_text.dart';

class SignInPage extends StatefulWidget {
  static String id = 'SignInPage';
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppImages.authBG),
                ),
              ),
            ),
            const Center(
              child: Column(
                children: [
                  SizedBox(height: 75),
                  Text(
                    Strings.authAudioText,
                    style: kTitleAudio,
                  ),
                  Text(
                    Strings.authDescriptionText,
                    style: kSignInGreetingTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: DevicePadding.medium.onlyHorizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const AuthTextField(
                    isObscure: false,
                    hint: Strings.emailHintText,
                    prefix: Icon(Icons.mail),
                    textInput: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 20),
                  const AuthTextField(
                    isObscure: true,
                    hint: Strings.passwordHintText,
                    prefix: Icon(Icons.password),
                    textInput: TextInputType.text,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      Strings.forgotPasswordText,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SignButton(
                    buttonTitle: Strings.signInButtonText,
                    onTap: () {},
                  ),
                  const SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: signUpText(
                      context,
                    ),
                  ),
                  const SizedBox(height: 60),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// responsive builder paketleri youtube
// responsive framework paketi
// theme üzerinden de ayarlanabilir