import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/data/models/product_sort_model/product_sort_model.dart';

class ProductSortData {
  final List<ProductSortModel> sortModel = [
    ProductSortModel(iconPath: AppVectors.filterIcon, title: 'Filter'),
    ProductSortModel(title: 'Popularity'),
    ProductSortModel(title: 'Newest'),
    ProductSortModel(title: 'Most Expensive'),
  ];

  List<ProductSortModel> getSortModel() {
    return sortModel;
  }
}
