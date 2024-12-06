import 'package:audio/app/core/routes/app_routes.dart';
import 'package:audio/app/providers/providers_set_up/providers_set_up.dart';
import 'package:audio/app/views/explore_products/page/explore_products_page.dart';
import 'package:audio/app/views/home/page/home_page.dart';
import 'package:audio/app/views/shopping/page/shopping_page.dart';
import 'package:audio/app/views/splash/page/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app/core/configs/theme/app_theme.dart';
import 'app/core/widgets/navigation_helper/navigation_helper.dart';

void main() /* async */ {
  /* WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(); */
  // firebase ile kullanıcı girisi saglanacak
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProvidersSetUp.providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        navigatorKey: Navigation.navigationKey,
        theme: AppTheme.appTheme,
        initialRoute: ShoppingPage.id,
        routes: AppRoutes.routes,
      ),
    );
  }
}
