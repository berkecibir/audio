import 'package:audio/app/core/configs/assets/app_images.dart';
import 'package:audio/app/data/models/explore_products_model/explore_products_model.dart';

class ExploreProductsData {
  final List<ExploreProductsModel> explore = [
    ExploreProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-2 HD Wireless',
      price: '250',
      rating: 4.0,
      reviewCount: 50,
    ),
    ExploreProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-3 HD Wireless',
      price: '500',
      rating: 4.6,
      reviewCount: 75,
    ),
    ExploreProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-4 HD Wireless',
      price: '1000',
      rating: 5.0,
      reviewCount: 89,
    ),
    ExploreProductsModel(
      imagePath: AppImages.headPhone,
      title: 'TMA-1 HD Wireless',
      price: '150',
      rating: 3.2,
      reviewCount: 17,
    ),
  ];

  List<ExploreProductsModel> getExploreProducts() {
    return explore;
  }
}
