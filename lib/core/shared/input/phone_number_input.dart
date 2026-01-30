import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_intl_phone_field/flutter_intl_phone_field.dart';

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
          IntlPhoneField(
            dropdownTextStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontSize: 15,
              color: AppColors.black500,
              fontWeight: FontWeight.w600,
            ),
            disableLengthCheck: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            initialCountryCode: 'IN',
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ],
      ),
    );
  }
}
