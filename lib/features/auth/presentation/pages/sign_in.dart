import 'package:ecommerce_mobile_app/core/constants/asset_constants.dart';
import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/shared/input/text_input.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/splash/presentation/widgets/logo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(
            right: 18,
            left: 18,
            top: 10,
            bottom: 10,
          ),
          margin: EdgeInsets.only(top: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Logo(size: 30),
              SizedBox(height: 10),
              Text(
                'Sign in to your Account',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontSize: 40,
                  color: AppColors.black500,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Enter your email and password to log in.',
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 16.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: 8),
              TextInput(label: 'Email', keyboardType: TextInputType.text),
              TextInput(label: 'Password'),
              SizedBox(height: 19),
              Text(
                'Forgot Password?',
                textAlign: TextAlign.end,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: 15.3,
                  fontWeight: FontWeight.w700,
                  color: AppColors.black500,
                ),
              ),
              SizedBox(height: 19),
              SizedBox(
                height: 53,

                child: FilledButton(
                  onPressed: () {
                    context.pushReplacement(RoutePaths.home);
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(17),
                    ),
                  ),
                  child: Text(
                    'Log In',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16,
                      color: AppColors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Expanded(child: Divider(color: AppColors.gray400)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'Or',
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontSize: 16,
                        color: AppColors.black500,
                      ),
                    ),
                  ),
                  Expanded(child: Divider(color: AppColors.gray400)),
                ],
              ),
              SizedBox(height: 18),
              SizedBox(
                height: 52,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      side: BorderSide(color: AppColors.gray400),
                    ),
                  ),
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset(
                      AssetConstants.facebookIcon,
                      width: 26,
                      height: 26,
                    ),
                  ),
                  label: Text(
                    'Continue with Google',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 14.5,
                      color: AppColors.black500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 52,
                child: TextButton.icon(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(16),
                      side: BorderSide(color: AppColors.gray400),
                    ),
                  ),
                  onPressed: () {},
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: Image.asset(
                      AssetConstants.googleIcon,
                      width: 26,
                      height: 26,
                    ),
                  ),
                  label: Text(
                    'Continue with Facebook',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 14.5,
                      color: AppColors.black500,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  context.push(RoutePaths.signup);
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Don\'t have an account?',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15.5,
                          color: AppColors.black500,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(
                        text: 'Sign Up',
                        style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontSize: 15.5,
                          color: AppColors.primaryColor,
                          fontWeight: FontWeight.w700,
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
