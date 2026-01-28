import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/shared/input/date_input.dart';
import 'package:ecommerce_mobile_app/core/shared/input/phone_number_input.dart';
import 'package:ecommerce_mobile_app/core/shared/input/text_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/splash/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.only(right: 18, left: 18, top: 10, bottom: 10),
          child: ListView(
            children: [
              Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      backgroundColor: AppColors.gray300,
                    ),
                    onPressed: () {
                      context.pop();
                    },
                    icon: Icon(LucideIcons.chevron_left, size: 30),
                  ),
                ],
              ),
              SizedBox(height: 12),
              // Logo(size: 30),
              Text(
                'Sign up',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 40,
                  color: AppColors.black500,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Create an account to continue!',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black500,
                ),
              ),
              SizedBox(height: 10),
              TextInput(label: 'Full Name'),
              TextInput(label: 'Email'),
              DateInput(label: "Date of Birth"),
              PhoneNumberInput(),
              TextInput(label: 'Set Password'),
              SizedBox(height: 30),
              SizedBox(
                height: 52,
                child: FilledButton(
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Register',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 15.5,
                      color: AppColors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  GoRouter.of(context).pushReplacement(RoutePaths.home);
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account?',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: AppColors.black500,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: 'Sign Up',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
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
