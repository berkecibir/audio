import 'package:audio/app/core/configs/assets/app_images.dart';
import 'package:audio/app/data/models/product_model/product_model.dart';

class ProductData {
  final List<ProductModel> products = [
    ProductModel(
      title: 'TMA-2 \nModular \nHeadphone',
      imagePath: AppImages.headPhone,
    ),
    ProductModel(
      title: 'TMA-2 \nModular \nHeadphone',
      imagePath: AppImages.headPhone,
    ),
  ];

  List<ProductModel> getProductsData() {
    return products;
  }
}
