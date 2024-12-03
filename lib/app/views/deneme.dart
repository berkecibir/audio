import 'package:audio/app/core/configs/assets/app_images.dart';
import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DenemePage extends StatefulWidget {
  static const String id = 'Deneme';
  const DenemePage({super.key});

  @override
  State<DenemePage> createState() => _DenemePageState();
}

class _DenemePageState extends State<DenemePage> {
  int itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping Cart'),
        leading: IconButton(
          icon: SvgPicture.asset(AppVectors.backIcon),
          onPressed: () {
            Navigation.ofPop();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              AppVectors.trashIcon,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: DevicePadding.small.onlyHorizontal,
        child: Column(
          children: [
            Container(
              color: AppColors.white,
              child: ListTile(
                leading: Container(
                  decoration: const BoxDecoration(
                    color: AppColors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: Image.asset(
                    AppImages.headPhone,
                  ),
                ),
                title: const Text(
                  'TMA-2 Comfort Wireless',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: const Text(
                  'USD 300',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    AppVectors.trashIcon,
                    colorFilter: const ColorFilter.mode(
                        AppColors.darkGrey, BlendMode.srcIn),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

    /* Scaffold(
      //appBar: AppBar(),
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImages.authBG),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const Align(
            alignment: Alignment.topCenter,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AuthTextField(
                isObscure: false,
                hint: Strings.emailHintText,
                prefix: Icon(Icons.mail),
                textInput: TextInputType.emailAddress,
              ),
              AuthTextField(
                isObscure: true,
                hint: Strings.passwordHintText,
                prefix: Icon(Icons.password),
                textInput: TextInputType.text,
              ),
            ],
          ),
        ],
      ),
    ); */
  }
}


 /*  Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListTile(
                    leading: Container(
                      height: 87,
                      width: 87,
                      decoration: const BoxDecoration(
                        color: AppColors.grey,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Image.asset(
                        AppImages.headPhone,
                      ),
                    ),
                    title: const Text(
                      'TMA-2 Comfort Wireless',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: const Text(
                      'USD 300',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {
                          setState(() {
                            itemCount++;
                          });
                        },
                        icon: const Icon(Icons.add),
                      ),
                      Text('$itemCount'),
                      IconButton(
                        onPressed: () {
                          if (itemCount > 0) {
                            setState(() {
                              itemCount--;
                            });
                          }
                        },
                        icon: const Icon(Icons.remove),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: SvgPicture.asset(
                          AppVectors.trashIcon,
                        ),
                      ),
                    ],
                  ),
                ],
              ), */