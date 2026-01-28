import 'package:ecommerce_mobile_app/core/shared/input/text_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        title: Text(
          "Account Settings",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 21,
            fontWeight: FontWeight.w600,
            color: AppColors.black500,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.only(right: 17, left: 18, top: 14, bottom: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                child: SizedBox(
                  width: 140,
                  height: 140,
                  child: CircleAvatar(backgroundColor: AppColors.gray300),
                ),
              ),
              SizedBox(height: 18),
              TextInput(label: "First Name"),
              TextInput(label: "Last Name"),
              TextInput(label: "Phone Number"),
              TextInput(label: "Delivery Address"),
            ],
          ),
        ),
      ),
    );
  }
}
