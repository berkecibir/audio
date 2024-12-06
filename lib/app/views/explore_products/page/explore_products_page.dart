import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/device_spacing/device_spacing.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/providers/explore_products_view_model/explore_products_view_model.dart';
import 'package:audio/app/providers/product_sort_view_model/product_sort_view_model.dart';
import 'package:audio/app/views/shopping/page/shopping_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../product/widgets/explore_products_widget.dart';

class ExploreProductsPage extends StatefulWidget {
  static const String id = 'explore';
  const ExploreProductsPage({
    super.key,
  });

  @override
  State<ExploreProductsPage> createState() => _ExploreProductsPageState();
}

class _ExploreProductsPageState extends State<ExploreProductsPage> {
  @override
  Widget build(BuildContext context) {
    final sortViewModel = Provider.of<ProductSortViewModel>(context);
    final exploreViewModel = Provider.of<ExploreProductsViewModel>(context);

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigation.ofPop();
            },
            icon: SvgPicture.asset(
              AppVectors.backIcon,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigation.push(page: const ShoppingPage());
              },
              icon: SvgPicture.asset(
                AppVectors.shoppingcartIcon,
              ),
            ),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: DevicePadding.small.onlyHorizontal,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Headphone'),
                  Text(
                    'TMA Wireless',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            DeviceSpacing.medium.height,
            Padding(
              padding: DevicePadding.small.onlyHorizontal,
              child: SizedBox(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: sortViewModel.productSortModelItems.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        sortViewModel.updateSelectedIndex(index);
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6.0, vertical: 4.0),
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(
                            color: sortViewModel.selectedIndex == index
                                ? AppColors.darkGrey
                                : Colors.transparent,
                            width: 1.0,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            sortViewModel.productSortModelItems[index].title,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
            DeviceSpacing.medium.height,
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                  color: AppColors.lightGrey,
                ),
                child: GridView.builder(
                  itemCount: exploreViewModel.exploreProducts.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.7, // Genişlik / Yükseklik oranı
                    //crossAxisSpacing: 2, // Hücreler arasındaki yatay boşluk
                    //mainAxisSpacing: 4, // Hücreler arasındaki dikey boşluk
                  ),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        child: ExploreProductsWidget(
                            explore: exploreViewModel.exploreProducts[index]));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
