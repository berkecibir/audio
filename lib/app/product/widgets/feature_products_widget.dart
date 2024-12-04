import 'package:flutter/material.dart';

class FeatureProductsWidget extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;

  const FeatureProductsWidget({
    required this.imagePath,
    required this.title,
    required this.price,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      // Sabit genişlik ve yükseklik
      height: screenHeight * 0.25,
      width: screenWidth * 0.40,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Resim sabit boyutta ve ölçeklenebilir.
          SizedBox(
            height: 100,
            child: Image.asset(
              imagePath,
              fit: BoxFit.contain, // Görseli boyuta göre içeride tutar
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\$$price',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

/* import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_spacing/device_spacing.dart';
import 'package:audio/app/data/models/feature_products_model/feature_products_model.dart';
import 'package:flutter/material.dart';

class FeatureProductsWidget extends StatelessWidget {
  final FeatureProductsModel feature;

  const FeatureProductsWidget({required this.feature, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.40,
      width: MediaQuery.of(context).size.width * 0.40,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        //mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            fit: BoxFit.contain,
            feature.imagePath,
            /* width: 120,
            height: 120, */
          ),
          Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            children: [
              DeviceSpacing.small.height,
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  feature.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '\$${feature.price}',
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
 */