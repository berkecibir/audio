import 'package:audio/app/providers/category_view_model/category_view_model.dart';
import 'package:audio/app/providers/explore_products_view_model/explore_products_view_model.dart';
import 'package:audio/app/providers/feature_products_view_model/feature_prodcuts_view_model.dart';
import 'package:audio/app/providers/product_sort_view_model/product_sort_view_model.dart';
import 'package:audio/app/providers/product_view_model/product_view_model.dart';
import 'package:audio/app/providers/user_profile_view_model/user_profile_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

class ProvidersSetUp {
  static List<SingleChildWidget> providers = [
    ChangeNotifierProvider(create: (_) => CategoryViewModel()),
    ChangeNotifierProvider(create: (_) => ProductViewModel()),
    ChangeNotifierProvider(create: (_) => FeatureProdcutsViewModel()),
    ChangeNotifierProvider(create: (_) => UserProfileViewModel()),
    ChangeNotifierProvider(create: (_) => ProductSortViewModel()),
    ChangeNotifierProvider(create: (_) => ExploreProductsViewModel()),
  ];
}
