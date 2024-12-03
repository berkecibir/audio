import 'package:audio/app/core/configs/assets/app_images.dart';
import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShoppingPage extends StatefulWidget {
  static const String id = 'Shopping';
  const ShoppingPage({super.key});

  @override
  State<ShoppingPage> createState() => _ShoppingPageState();
}

// Shopping Page Denemesi

class _ShoppingPageState extends State<ShoppingPage> {
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
              child: Column(
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
