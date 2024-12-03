import 'package:audio/app/data/models/feature_products_model/feature_products_model.dart';
import 'package:audio/app/data/repository/audio_repository.dart';
import 'package:flutter/material.dart';

class FeatureProdcutsViewModel extends ChangeNotifier {
  var audioRepo = AudioRepository();

  List<FeatureProductsModel> featureProducts = [];

  FeatureProdcutsViewModel() {
    // init işlemi yapıldı listeler çekildi
    catchFeatureProductsItems();
  }

  void catchFeatureProductsItems() {
    featureProducts = audioRepo.getFeatureProductsItems();
    notifyListeners();
  }
}
