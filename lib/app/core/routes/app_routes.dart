//import 'package:audio/app/views/deneme.dart';
import 'package:audio/app/views/deneme.dart';
import 'package:audio/app/views/explore_products/page/explore_products_page.dart';
import 'package:audio/app/views/profile/page/profile_page.dart';
import 'package:audio/app/views/search/page/search_page.dart';
import 'package:audio/app/views/shopping/page/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:audio/app/views/auth/pages/sign_in_page.dart';
import 'package:audio/app/views/auth/pages/sign_up_page.dart';
import 'package:audio/app/views/home/page/home_page.dart';
import 'package:audio/app/views/splash/page/splash_page.dart';

class AppRoutes {
  static Map<String, WidgetBuilder> routes = {
    SplashPage.id: (context) => const SplashPage(),
    SignInPage.id: (context) => const SignInPage(),
    SignUpPage.id: (context) => const SignUpPage(),
    HomePage.id: (context) => const HomePage(),
    SearchPage.id: (context) => const SearchPage(),
    ProfilePage.id: (context) => const ProfilePage(),
    DenemePage.id: (context) => const DenemePage(),
    ShoppingPage.id: (context) => const ShoppingPage(),
    ExploreProductsPage.id: (context) => const ExploreProductsPage()
  };
}
// autoroute goroute kullanılabilir