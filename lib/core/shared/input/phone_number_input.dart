import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input_v2/intl_phone_number_input.dart';

class PhoneNumberInput extends StatelessWidget {
  const PhoneNumberInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Phone Number',
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.black500,
            ),
          ),
          SizedBox(height: 3),

          InternationalPhoneNumberInput(
            inputDecoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.gray400),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.gray400),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: AppColors.primaryColor),
              ),
            ),
            onInputChanged: (value) {
              print(value);
            },
          ),
        ],
      ),
    );
  }
}
