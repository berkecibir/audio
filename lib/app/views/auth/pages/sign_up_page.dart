import 'package:audio/app/core/widgets/device_spacing/device_spacing.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/core/utils/constants/text_style.dart';
import 'package:audio/app/product/widgets/sign_button.dart';
import 'package:audio/app/views/home/page/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../core/configs/assets/app_images.dart';
import '../../../core/utils/constants/strings.dart';
import '../../../core/widgets/device_padding/device_padding.dart';
import '../../../product/widgets/auth_icon_button.dart';
import '../../../product/widgets/auth_text_field.dart';
import '../../../product/widgets/sign_in_text.dart';

class SignUpPage extends StatefulWidget {
  static String id = 'SignUpPage';

  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
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
                  Text(Strings.authAudioText, style: kTitleAudio),
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
                children: [
                  const AuthTextField(
                      isObscure: false,
                      hint: Strings.emailHintText,
                      prefix: Icon(Icons.mail),
                      textInput: TextInputType.emailAddress),
                  const SizedBox(height: 20),
                  const AuthTextField(
                      isObscure: true,
                      hint: Strings.passwordHintText,
                      prefix: Icon(Icons.password),
                      textInput: TextInputType.text),
                  const SizedBox(height: 15),
                  SignButton(
                    buttonTitle: Strings.signUpButtonText,
                    onTap: () {
                      Navigation.pushReplace(page: const HomePage());
                    },
                  ),
                  DeviceSpacing.medium.height,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // apple.authbutton örneği
                      AuthIconButton.apple(
                        onTap: () {
                          if (kDebugMode) {
                            print('apple button tapped');
                          }
                        },
                      ),
                      DeviceSpacing.medium.width,
                      // enum => sizedbox tek elden yönetmeli
                      AuthIconButton.facebook(
                        onTap: () {},
                      ),
                      DeviceSpacing.medium.width,
                      //const SizedBox(width: 15),
                      AuthIconButton.google(
                        onTap: () {},
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: signInText(context)),
                  const SizedBox(height: 75),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
