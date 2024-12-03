import 'package:audio/app/data/models/product_sort_model/product_sort_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class ProductSortViewModel extends ChangeNotifier {
  final AudioRepository audioRepo = AudioRepository();

  int _selectedIndex = 0;

  int get selectedIndex => _selectedIndex;

  List<ProductSortModel> productSortModelItems = [];

  ProductSortViewModel() {
    fetchSortProductsItems();
  }

  void fetchSortProductsItems() {
    productSortModelItems = audioRepo.getSortModelData();
    notifyListeners();
  }

  void updateSelectedIndex(int index) {
    if (index != _selectedIndex) {
      _selectedIndex = index;
      notifyListeners();
    }
  }
}
