import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_category_repository.dart';
import 'package:flutter/material.dart';

class ProductCategories extends StatelessWidget {
  final void Function(int) onClick;
  final int categoryIndex;
  const ProductCategories({
    super.key,
    required this.onClick,
    required this.categoryIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34,
      margin: EdgeInsets.only(top: 20, bottom: 30),
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final data = categories[index];
          return TextButton(
            onPressed: () => onClick(index),
            style: TextButton.styleFrom(
              foregroundColor: AppColors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(14),
              ),
              backgroundColor: categoryIndex == index
                  ? AppColors.primaryColor
                  : AppColors.white,
              side: BorderSide(
                width: 0.5,
                color: categoryIndex == index
                    ? AppColors.primaryColor
                    : AppColors.black100,
              ),
            ),
            child: Text(
              data.name,
              style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontSize: 14,
                color: categoryIndex == index
                    ? AppColors.white
                    : AppColors.black100,
                fontWeight: FontWeight.w600,
              ),
            ),
          );
        },
        itemCount: categories.length,
      ),
    );
  }
}
