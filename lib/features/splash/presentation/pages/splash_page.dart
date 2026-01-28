import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/splash/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  initState() {
    super.initState();
    redirect();
  }

  Future<void> redirect() async {
    await Future.delayed(Duration(milliseconds: 3000), () {
      if (mounted) GoRouter.of(context).pushReplacement(RoutePaths.signin);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        top: false,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(
            right: 15,
            left: 15,
            top: 10,
            bottom: MediaQuery.of(context).viewPadding.bottom + 0.8,
          ),
          decoration: BoxDecoration(color: Color(0xFFF8F9FA)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Logo(),
              Spacer(),
              Text(
                'Version 1.0',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black300,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
