import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/data/models/feature_products_model/feature_products_model.dart';
import 'package:flutter/material.dart';

class FeatureProductsWidget extends StatelessWidget {
  final FeatureProductsModel feature;

  const FeatureProductsWidget({required this.feature, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(
            feature.imagePath,
            width: 80,
            height: 80,
          ),
          const SizedBox(height: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                feature.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Text(
                '\$${feature.price}',
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
