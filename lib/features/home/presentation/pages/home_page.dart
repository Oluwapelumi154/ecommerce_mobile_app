import 'package:ecommerce_mobile_app/core/shared/bottom_bar.dart';
import 'package:ecommerce_mobile_app/core/shared/input/search_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_repository.dart';
import 'package:ecommerce_mobile_app/features/home/widgets/product_card.dart';
import 'package:ecommerce_mobile_app/features/home/widgets/product_categories.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int categoryIndex = 0;
  @override
  initState() {
    super.initState();
  }

  void onSelectCategory(int index) {
    setState(() {
      categoryIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            right: 18,
            left: 18,
            top: 10,
            bottom: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi P.Orebayo",
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.black300,
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: 3),
                      Text(
                        'Good morning',
                        style: Theme.of(context).textTheme.titleMedium
                            ?.copyWith(
                              fontSize: 20,
                              color: AppColors.black500,
                              fontWeight: FontWeight.w700,
                            ),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50,
                    height: 50,
                    child: CircleAvatar(backgroundColor: AppColors.black100),
                  ),
                ],
              ),
              SearchInput(),
              ProductCategories(
                categoryIndex: categoryIndex,
                onClick: onSelectCategory,
              ),
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
      bottomNavigationBar: BottomBar(),
    );
  }
}
