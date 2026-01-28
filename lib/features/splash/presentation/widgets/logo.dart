import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  final double size;
  const Logo({super.key, this.size = 45});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Shoevio',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(
        fontSize: size,
        color: AppColors.primaryColor,
        fontWeight: FontWeight.w800,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
