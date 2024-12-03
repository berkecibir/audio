import 'package:audio/app/data/models/category_model/category_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class CategoryViewModel extends ChangeNotifier {
  int _selectedIndex = 0;
  var audioRepo = AudioRepository();

  List<Category> categories = [];
  int get selectedIndex => _selectedIndex;

  CategoryViewModel() {
    // ViewModel oluşturulurken kategorileri yüklesin
    catchCategoires();
  }

  // kategorileri yakalasın
  void catchCategoires() {
    categories = audioRepo.getCategoryData();
    /* categories = CategoryData().getCategories(); */
    notifyListeners();
  }

  String get searchHint {
    if (_selectedIndex == -1) {
      return 'Search...';
    }
    return 'Search ${categories[_selectedIndex].name.toLowerCase()}';
  }

  void selectCategory(int index) {
    if (_selectedIndex == index) {
      _selectedIndex = -1;
    } else {
      _selectedIndex = index;
    }
    notifyListeners();
  }
}
