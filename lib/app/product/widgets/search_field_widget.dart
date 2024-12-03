import 'package:audio/app/core/configs/assets/app_vectors.dart';
import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/core/widgets/device_padding/device_padding.dart';
import 'package:audio/app/core/widgets/navigation_helper/navigation_helper.dart';
import 'package:audio/app/providers/category_view_model/category_view_model.dart';
import 'package:audio/app/views/search/page/search_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.categoryViewModel,
  });

  final CategoryViewModel categoryViewModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: DevicePadding.xlarge.onlyVertical,
      child: Padding(
        padding: DevicePadding.medium.onlyHorizontal,
        child: TextField(
          readOnly: true, // klavye devre dışı kalıyor
          onTap: () {
            Navigation.push(page: const SearchPage());
          },
          cursorColor: AppColors.black,
          decoration: InputDecoration(
            hintText: categoryViewModel.searchHint,
            focusColor: AppColors.strokeGrey,
            prefixIcon: SvgPicture.asset(
              AppVectors.searchIcon,
              height: 20,
              width: 20,
              fit: BoxFit.scaleDown,
            ),
            border: const OutlineInputBorder(
              borderSide: BorderSide(
                color: AppColors.strokeGrey,
                width: 5,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
