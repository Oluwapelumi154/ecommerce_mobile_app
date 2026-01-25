import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class TextInput extends StatelessWidget {
  const TextInput({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(color: AppColors.gray200),
        ),
      ),
    );
  }
}
