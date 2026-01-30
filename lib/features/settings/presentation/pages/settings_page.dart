import 'package:ecommerce_mobile_app/core/navigation/route_paths.dart';
import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:ecommerce_mobile_app/features/settings/presentation/widgets/switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';
import 'package:go_router/go_router.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool isClicked = false;

  @override
  initState() {
    super.initState();
  }

  void onToggle(bool val) {
    setState(() {
      isClicked = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontSize: 20,
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
              Row(
                children: [
                  SizedBox(
                    width: 60,
                    height: 60,
                    child: CircleAvatar(
                      backgroundColor: AppColors.primaryColor,
                    ),
                  ),
                  SizedBox(width: 14),
                  Text(
                    'Orebayo Oluwapelumi',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black500,
                    ),
                  ),
                ],
              ),

              Divider(height: 40, color: AppColors.gray400),
              Text(
                'Account Settings',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black300,
                ),
              ),
              SizedBox(height: 8),
              ListTile(
                leading: Icon(LucideIcons.user),
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Personal Information',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    context.push(RoutePaths.account);
                  },
                  child: Icon(LucideIcons.chevron_right, size: 23),
                ),
              ),
              ListTile(
                leading: Icon(LucideIcons.key_round),
                contentPadding: EdgeInsets.zero,
                title: Text(
                  'Change Password',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: GestureDetector(
                  onTap: () {
                    print('Hello');
                  },
                  child: Icon(LucideIcons.chevron_right, size: 23),
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(LucideIcons.sun_medium),
                title: Text(
                  'Dark Mode',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: SwitchToggler(
                  isToggled: isClicked,
                  onToggle: onToggle,
                ),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(LucideIcons.log_out, color: AppColors.red),
                title: Text(
                  'Logout',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontSize: 17,
                    color: AppColors.red,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Divider(height: 30, color: AppColors.gray400),
              Text(
                'More',
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black300,
                ),
              ),
              SizedBox(height: 5),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(LucideIcons.heart_handshake),
                title: Text(
                  'About us',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: Icon(LucideIcons.chevron_right, size: 23),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(LucideIcons.message_circle_question_mark),
                title: Text(
                  'Help and Support',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: Icon(LucideIcons.chevron_right, size: 23),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(LucideIcons.shield_check),
                title: Text(
                  'Privacy Policy',
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(fontSize: 17),
                ),
                trailing: Icon(LucideIcons.chevron_right, size: 23),
              ),

              Spacer(),
              SizedBox(
                height: 50,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: AppColors.red, width: 1),
                      borderRadius: BorderRadiusGeometry.circular(50),
                    ),
                  ),
                  child: Text(
                    'Delete Account',
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: 16,
                      color: AppColors.red,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: 18),
              // TextInput(label: "First Name"),
              // TextInput(label: "Last Name"),
              // TextInput(label: "Phone Number"),
              // TextInput(label: "Delivery Address"),
            ],
          ),
        ),
      ),
    );
  }
}
