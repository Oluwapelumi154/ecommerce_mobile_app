import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';

class SwitchToggler extends StatelessWidget {
  final bool isToggled;
  final Function(bool) onToggle;
  const SwitchToggler({
    super.key,
    required this.isToggled,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: isToggled,
      onChanged: onToggle,
      activeTrackColor: AppColors.primaryColor,
      activeThumbColor: AppColors.gray200,
      inactiveThumbColor: AppColors.black300,
      inactiveTrackColor: AppColors.gray300,
      trackOutlineColor: isToggled
          ? WidgetStateProperty.all(AppColors.primaryColor)
          : WidgetStateProperty.all(AppColors.black100),
      trackOutlineWidth: WidgetStatePropertyAll(1.5),
    );
  }
}
