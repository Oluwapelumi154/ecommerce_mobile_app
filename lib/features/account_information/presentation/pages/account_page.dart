import 'package:ecommerce_mobile_app/core/shared/input/phone_number_input.dart';
import 'package:ecommerce_mobile_app/core/shared/input/text_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          'Personal Information',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: AppColors.black500,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextInput(label: 'Email', hintText: 'Enter your email'),
              TextInput(label: 'Full Name', hintText: 'Enter your email'),
              PhoneNumberInput(),
              TextInput(
                label: 'Delivery Address',
                hintText: 'Enter your delivery information',
              ),
              SizedBox(height: 30),
              Spacer(),
              SizedBox(
                height: 50,
                child: FilledButton(
                  onPressed: () {},
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                  ),
                  child: Text(
                    'Update',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 17,
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
    );
  }
}
