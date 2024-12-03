import 'package:audio/app/data/models/category_model/category_model.dart';

class CategoryData {
  final List<Category> categories = [
    Category('Headphone'),
    Category('Headband'),
    Category('Earpads'),
    Category('Cable'),
    Category('Piano'),
    Category('Drumset'),
    Category('Electronics'),
    Category('Keyboard'),
    Category('Guitar'),
  ];

  List<Category> getCategories() {
    return categories;
  }
}
