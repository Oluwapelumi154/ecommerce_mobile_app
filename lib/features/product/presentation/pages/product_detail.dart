import 'package:ecommerce_mobile_app/core/constants/asset_constants.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ProductDetailPage extends StatelessWidget {
  final int productId;
  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((product) => product.id == productId);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Product Details',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w700,
            color: AppColors.black500,
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Image.asset(
              product.image,
              width: 398,
              height: 398,
              fit: BoxFit.cover,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        product.title,
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontSize: 20,
                              color: AppColors.black500,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                      SizedBox(
                        width: 45,
                        height: 45,
                        child: IconButton(
                          style: IconButton.styleFrom(
                            backgroundColor: AppColors.gray300,
                          ),
                          onPressed: () {},
                          icon: Icon(
                            LucideIcons.heart,
                            size: 27,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      StarRating(
                        mainAxisAlignment: MainAxisAlignment.start,
                        size: 27,
                        borderColor: Colors.amber,
                        starCount: 5,
                        rating: 2,
                        color: Colors.amber,
                      ),
                      SizedBox(width: 6),
                      Text(
                        '(20)',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 15.5,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black500,
                    ),
                    product.description,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text(
                        '\$${product.price}',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontSize: 23,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black500,
                            ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        '\$${product.slashPrice}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 20,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2,
                          decorationColor: AppColors.red,
                          color: AppColors.red,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(color: AppColors.white),
        padding: EdgeInsets.fromLTRB(
          18,
          15,
          18,
          MediaQuery.of(context).viewPadding.bottom + 0.5,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: 53,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(20),
                    ),
                    backgroundColor: AppColors.primaryColor,
                  ),
                  child: Text(
                    'Buy Now',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17.5,
                      color: AppColors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(width: 13),
            SizedBox(
              width: 53,
              height: 53,
              child: IconButton(
                hoverColor: AppColors.primaryColor,
                style: IconButton.styleFrom(
                  side: BorderSide(color: AppColors.primaryColor, width: 1.5),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(13),
                  ),
                ),
                onPressed: () {},
                icon: Icon(
                  LucideIcons.shopping_cart,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w500,
                  size: 27,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
