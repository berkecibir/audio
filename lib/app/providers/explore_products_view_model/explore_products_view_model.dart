import 'package:audio/app/data/models/explore_products_model/explore_products_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class ExploreProductsViewModel extends ChangeNotifier {
  var audioRepo = AudioRepository();
  List<ExploreProductsModel> exploreProducts = [];

  ExploreProductsViewModel() {
    catchExploreProducts();
  }

  void catchExploreProducts() {
    exploreProducts = audioRepo.getExploreModelsData();
    notifyListeners();
  }
}
