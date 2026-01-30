import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class CouponInput extends StatelessWidget {
  const CouponInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Enter Discount Code",
        suffixIcon: TextButton(
          onPressed: () {},
          child: Text(
            'Apply',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 17.5,
              color: AppColors.primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        hintStyle: TextStyle(
          color: AppColors.black300,
          fontSize: 15,
          fontWeight: FontWeight.w300,
        ),

        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.black100, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.black100, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
          borderSide: BorderSide(color: AppColors.black100, width: 0.5),
        ),
      ),
    );
  }
}
