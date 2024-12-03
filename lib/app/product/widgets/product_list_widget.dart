import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/data/models/product_model/product_model.dart';
import 'package:audio/app/views/explore_products/page/explore_products_page.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
        vertical: 8.0,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: DevicePadding.medium.all,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.black,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.arrow_forward,
                          color: AppColors.primary,
                        ),
                        TextButton(
                          onPressed: () {
                            Navigation.push(page: const ExploreProductsPage());
                          },
                          child: Text(
                            product.buttonText,
                            style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: AppColors.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: DevicePadding.medium.onlyRight,
                child: Image.asset(
                  product.imagePath,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
