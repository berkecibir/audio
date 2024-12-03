import 'package:audio/app/data/models/product_model/product_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  var audioRepo = AudioRepository();

  List<ProductModel> products = [];

  ProductViewModel() {
    catchProductsItems();
  }
  void catchProductsItems() {
    products = audioRepo.getProductData();
    notifyListeners();
  }
}
