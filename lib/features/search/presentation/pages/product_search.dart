import 'package:ecommerce_mobile_app/core/shared/input/search_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_repository.dart';
import 'package:ecommerce_mobile_app/features/home/widgets/product_card.dart';
import 'package:flutter/material.dart';

class ProductSearchPage extends StatelessWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: false,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        scrolledUnderElevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Search',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: AppColors.black500,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            children: [
              SearchInput(),
              SizedBox(height: 20),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.7,
                  ),

                  itemCount: products.length,
                  itemBuilder: (context, int index) {
                    final product = products[index];

                    return ProductCard(
                      id: product.id,
                      image: product.image,
                      title: product.title,
                      price: product.price,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
