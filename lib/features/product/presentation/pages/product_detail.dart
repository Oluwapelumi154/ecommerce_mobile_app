import 'package:ecommerce_mobile_app/core/constants/asset_constants.dart';
import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:go_router/go_router.dart';

class ProductDetailPage extends StatelessWidget {
  final int productId;
  const ProductDetailPage({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    final product = products.firstWhere((product) => product.id == productId);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Stack(
              children: [
                Positioned(
                  child: Image.asset(product.image, width: 398, height: 398),
                ),
                Positioned(
                  top: 10,
                  left: 14,
                  child: SizedBox(
                    width: 45,
                    height: 45,
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).push(RoutePaths.home);
                      },
                      icon: Icon(Icons.arrow_back_ios),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Text('hello', textAlign: TextAlign.center),
                ),
              ],
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
                            ?.copyWith(fontSize: 20, color: AppColors.black500),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          AssetConstants.favouriteIcon,
                          width: 20,
                          height: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      StarRating(mainAxisAlignment: MainAxisAlignment.start),
                      SizedBox(width: 6),
                      Text(
                        '(20)',
                        style: Theme.of(
                          context,
                        ).textTheme.bodyMedium?.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      fontSize: 15.3,
                      fontWeight: FontWeight.w300,
                      color: AppColors.black500,
                    ),
                    product.description,
                  ),
                  SizedBox(height: 16),
                  Row(
                    children: [
                      Text('\$${product.price}'),
                      SizedBox(width: 10),
                      Text(
                        '\$${product.slashPrice}',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 17,
                          decoration: TextDecoration.lineThrough,
                          decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2,
                          decorationColor: AppColors.red,
                          color: AppColors.red,
                          fontWeight: FontWeight.w700,
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
      bottomNavigationBar: Padding(
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
                      fontSize: 15,
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
                  side: BorderSide(color: AppColors.primaryColor),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(13),
                  ),
                ),
                onPressed: () {},
                icon: Image.asset(
                  AssetConstants.shoppingCartIcon,
                  width: 43,
                  height: 43,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
