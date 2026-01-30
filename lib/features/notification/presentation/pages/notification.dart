import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyActions: true,
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: Text(
          'Notification',
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
            fontSize: 21,
            color: AppColors.black500,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 20),
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(children: [Text('Notification Page')]),
        ),
      ),
    );
  }
}
