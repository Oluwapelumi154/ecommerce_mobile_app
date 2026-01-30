import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/shared/input/search_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/home/data/models/product.dart';
import 'package:ecommerce_mobile_app/features/home/data/models/product_category.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_category_repository.dart';
import 'package:ecommerce_mobile_app/features/home/data/repositories/product_repository.dart';
import 'package:ecommerce_mobile_app/features/home/widgets/product_card.dart';
import 'package:ecommerce_mobile_app/features/home/widgets/product_categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';

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

  ProductCategory get category => categories[categoryIndex];
  List<Product> get filteredProducts =>
      products.where((product) => product.categoryId == category.id).toList();

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
                          fontWeight: FontWeight.w800,
                          fontSize: 15.7,
                        ),
                      ),
                      SizedBox(height: 2),
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
                    child: IconButton(
                      onPressed: () {
                        GoRouter.of(context).push(RoutePaths.notification);
                      },
                      style: IconButton.styleFrom(
                        backgroundColor: AppColors.gray300,
                      ),
                      icon: Icon(LucideIcons.bell, color: AppColors.black500),
                    ),
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

                  itemCount: categoryIndex == 0
                      ? products.length
                      : filteredProducts.length,
                  itemBuilder: (context, int index) {
                    final product = categoryIndex == 0
                        ? products[index]
                        : filteredProducts[index];
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
