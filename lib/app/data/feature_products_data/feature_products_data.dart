import 'package:audio/app/core/configs/assets/app_images.dart';
import 'package:audio/app/data/models/feature_products_model/feature_products_model.dart';

class FeatureProductsData {
  final List<FeatureProductsModel> featureProducts = [
    FeatureProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-2 HD Wireless',
      price: '350',
    ),
    FeatureProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-2 HD Wireless',
      price: '350',
    ),
    FeatureProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-2 HD Wireless',
      price: '350',
    ),
  ];

  List<FeatureProductsModel> getFeatureProductsData() {
    return featureProducts;
  }
}
