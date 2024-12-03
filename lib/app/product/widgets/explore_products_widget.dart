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
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                explore.imagePath,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => const Icon(
                  Icons.image_not_supported,
                  size: 50,
                  color: AppColors.grey,
                ),
              ),
            ),
          ),
          DeviceSpacing.small.height,
          Text(
            explore.title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
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
              fontSize: 14,
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.star,
                size: 16,
                color: Colors.amber,
              ),
              const SizedBox(width: 4),
              Text(
                explore.rating.toStringAsFixed(1),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              DeviceSpacing.small.width,
              Text(
                '(${explore.reviewCount} Reviews)', // yorum sayısı
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
