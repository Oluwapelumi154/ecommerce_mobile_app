import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/cart/presentation/widgets/cart_item.dart';
import 'package:ecommerce_mobile_app/features/cart/presentation/widgets/coupon_input.dart';
import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: AppColors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'My Cart',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 22,
            fontWeight: FontWeight.w700,
            color: AppColors.black500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 5),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: List.generate(5, (index) {
                  return CartItem();
                }),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: SafeArea(
        child: AnimatedPadding(
          duration: Duration(milliseconds: 150),
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Container(
            padding: EdgeInsets.only(right: 20, left: 20, top: 25, bottom: 20),
            decoration: BoxDecoration(
              color: AppColors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisSize: MainAxisSize.min, // <- ADD THIS LINE
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CouponInput(),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    border: BoxBorder.fromLTRB(
                      top: BorderSide.none,
                      right: BorderSide.none,
                      left: BorderSide.none,
                      bottom: BorderSide(color: AppColors.black100),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Subtotal',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                fontSize: 19,
                                fontWeight: FontWeight.w400,
                              ),
                        ),
                        Text(
                          '\$2000',
                          style: Theme.of(context).textTheme.displaySmall
                              ?.copyWith(
                                fontSize: 22,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black500,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(
                              fontSize: 19,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      Text(
                        '\$2000',
                        style: Theme.of(context).textTheme.displaySmall
                            ?.copyWith(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: AppColors.black500,
                            ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 35),
                SizedBox(
                  height: 53,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.primaryColor,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Checkout',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 18,
                        color: AppColors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
