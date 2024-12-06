import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_spacing/device_spacing.dart';
import 'package:audio/app/data/models/explore_products_model/explore_products_model.dart';
import 'package:flutter/material.dart';

class ExploreProductsWidget extends StatelessWidget {
  final ExploreProductsModel explore;

  const ExploreProductsWidget({required this.explore, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 6),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Image.asset(
              explore.imagePath,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.fitHeight,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.image_not_supported,
                size: 50,
                color: AppColors.grey,
              ),
            ),
          ),
          DeviceSpacing.small.height,
          Text(
            explore.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
            /*  maxLines: 2,
            overflow: TextOverflow.ellipsis, */
          ),
          DeviceSpacing.xsmall.height,
          Text(
            '\$${explore.price}',
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.darkGrey,
              fontSize: 13,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 15,
                color: Colors.amber,
              ),
              DeviceSpacing.small.width,
              Text(
                explore.rating.toStringAsFixed(1),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
              DeviceSpacing.small.width,
              Text(
                '(${explore.reviewCount} Reviews)', // yorum sayısı
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
