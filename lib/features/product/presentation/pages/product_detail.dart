import 'package:ecommerce_mobile_app/core/constants/asset_constants.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetConstants.productDetailOne, width: 398, height: 398),
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
                      'Nike Air Max Dn Essential',
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontSize: 20,
                        color: AppColors.black500,
                      ),
                    ),
                    Image.asset(
                      AssetConstants.favouriteIcon,
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(height: 14),
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
                  'The Air Max Dn features our Dynamic Air unit system of dual-pressure tubes, creating a responsive sensation with every step. This results in a futuristic design that\'s comfortable enough to wear from day to night. Go ahead Feel The Unreal',
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Text('\$2000'),
                    SizedBox(width: 15),
                    Text(
                      '\$1500',
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
