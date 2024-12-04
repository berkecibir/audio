import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/utils/constants/strings.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/device_spacing/device_spacing.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/product/widgets/category_widget.dart';
import 'package:audio/app/product/widgets/feature_products_widget.dart';
import 'package:audio/app/product/widgets/product_list_widget.dart';
import 'package:audio/app/providers/category_view_model/category_view_model.dart';
import 'package:audio/app/providers/feature_products_view_model/feature_prodcuts_view_model.dart';
import 'package:audio/app/providers/product_view_model/product_view_model.dart';
import 'package:audio/app/views/profile/page/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../product/widgets/search_field_widget.dart';
import '../../../product/widgets/see_products_widgets.dart';

class HomePage extends StatefulWidget {
  static const String id = 'Home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final categoryViewModel = Provider.of<CategoryViewModel>(context);
    final productViewModel = Provider.of<ProductViewModel>(context);
    final featureProductsViewModel =
        Provider.of<FeatureProdcutsViewModel>(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(AppVectors.menuIcon),
          ),
          title: SvgPicture.asset(AppVectors.logo),
          actions: [
            Padding(
              padding: DevicePadding.small.onlyHorizontal,
              child: GestureDetector(
                onTap: () {
                  Navigation.push(page: const ProfilePage());
                },
                child: const CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage('https://via.placeholder.com/150'),
                ),
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DeviceSpacing.medium.height,
            Padding(
              padding: DevicePadding.large.onlyHorizontal,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(Strings.homePageFirstGreetingText,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                  Text(Strings.homePageSecondGreetingText,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 24))
                ],
              ),
            ),
            SearchFieldWidget(
              categoryViewModel: categoryViewModel,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.secondWhite,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                child: Column(
                  children: [
                    DeviceSpacing.xlarge.height,
                    CategoryWidget(categoryViewModel: categoryViewModel),
                    const SizedBox(height: 25),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal, // Yatay kaydırma
                        itemCount: productViewModel.products.length,
                        itemBuilder: (context, index) {
                          final product = productViewModel.products[index];
                          return ProductCard(
                            product: product,
                          );
                        },
                      ),
                    ),
                    const SeeProductsWidgets(),
                    Expanded(
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            featureProductsViewModel.featureProducts.length,
                        itemBuilder: (context, index) {
                          final feature =
                              featureProductsViewModel.featureProducts[index];
                          return FeatureProductsWidget(
                            imagePath: feature.imagePath,
                            title: feature.title,
                            price: feature.price,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
