import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:flutter/material.dart';

class SeeProductsWidgets extends StatelessWidget {
  const SeeProductsWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevicePadding.medium.onlyHorizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Featured Products',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'See All',
              style: TextStyle(
                fontSize: 15,
                color: AppColors.darkGrey,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
