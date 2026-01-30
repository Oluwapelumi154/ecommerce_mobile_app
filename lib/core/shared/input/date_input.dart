import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class DateInput extends StatelessWidget {
  final String label;
  const DateInput({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.black500,
            ),
          ),
          SizedBox(height: 3),

          TextFormField(
            keyboardType: TextInputType.datetime,
            inputFormatters: [],
            decoration: InputDecoration(
              hintText: 'Select your date of birth',
              hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: AppColors.black300,
              ),
              suffixIcon: GestureDetector(
                onTap: () {
                  print('Clicked');
                },
                child: Icon(
                  LucideIcons.calendar,
                  color: AppColors.black300,
                  size: 20,
                ),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.red, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
