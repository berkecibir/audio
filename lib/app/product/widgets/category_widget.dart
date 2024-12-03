import 'package:audio/app/core/configs/theme/app_colors.dart';
import 'package:audio/app/providers/category_view_model/category_view_model.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({
    super.key,
    required this.categoryViewModel,
  });

  final CategoryViewModel categoryViewModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryViewModel.categories.length,
        itemBuilder: (context, index) {
          final category = categoryViewModel.categories[index];
          return GestureDetector(
            onTap: () {
              categoryViewModel.selectCategory(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 8),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: categoryViewModel.selectedIndex == index
                    ? AppColors.primary
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: categoryViewModel.selectedIndex == index
                      ? AppColors.primary
                      : Colors.transparent,
                ),
              ),
              child: Center(
                child: Text(
                  category.name,
                  style: TextStyle(
                    color: categoryViewModel.selectedIndex == index
                        ? AppColors.white
                        : AppColors.darkGrey,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
