import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String title;
  final int price;
  final int id;

  const ProductCard({
    required this.image,
    required this.title,
    required this.price,
    required this.id,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // ignore: unnecessary_brace_in_string_interps
        GoRouter.of(context).push('/product/detail/${id}');
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          shape: BoxShape.rectangle,
          color: AppColors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(13),
                topRight: Radius.circular(13),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 150, // This will now work!
                width: double.infinity,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.displayMedium?.copyWith(
                      fontSize: 13,
                      color: AppColors.black500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '\$${price.toString()}',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: AppColors.black500,
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
