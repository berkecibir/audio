import 'package:audio/app/data/explore_products_data/explore_products_data.dart';
import 'package:audio/app/data/feature_products_data/feature_products_data.dart';
import 'package:audio/app/data/models/explore_products_model/explore_products_model.dart';
import 'package:audio/app/data/models/feature_products_model/feature_products_model.dart';
import 'package:audio/app/data/models/product_model/product_model.dart';
import 'package:audio/app/data/models/product_sort_model/product_sort_model.dart';
import 'package:audio/app/data/models/user_profile_model/user_profile_model.dart';
import 'package:audio/app/data/product_data/product_data.dart';
import 'package:audio/app/data/product_sort_data/product_sort_data.dart';

import '../models/category_model/category_model.dart';
import '../category_data/category_data.dart';

class AudioRepository {
  List<Category> getCategoryData() {
    return CategoryData().getCategories();
  }

  List<FeatureProductsModel> getFeatureProductsItems() {
    return FeatureProductsData().getFeatureProductsData();
  }

  List<ProductModel> getProductData() {
    return ProductData().getProductsData();
  }

  List<UserProfileModel> getProfilData() {
    return [
      UserProfileModel(
        userName: 'Berke Atahan',
        userMail: 'berke@gmail.com',
        imageUrl: 'https://via.placeholder.com/150',
      )
    ];
  }

  List<ProductSortModel> getSortModelData() {
    return ProductSortData().getSortModel();
  }

  final exploreProductsData = ExploreProductsData();

  List<ExploreProductsModel> getExploreModelsData() {
    return exploreProductsData.getExploreProducts();
  }
}

// abstract class (method imzası)
// clean architecture bak
// solid araştırması
// clean code araştır