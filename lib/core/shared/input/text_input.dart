import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class TextInput extends StatefulWidget {
  final String label;
  final TextInputType? keyboardType;
  final String? hintText;
  const TextInput({
    super.key,
    this.keyboardType = TextInputType.text,
    required this.label,
    this.hintText,
  });

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    bool isPasswordField = widget.keyboardType == TextInputType.visiblePassword;

    return Container(
      margin: EdgeInsets.only(top: 18),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            widget.label,
            style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: AppColors.black500,
            ),
          ),
          SizedBox(height: 3),
          TextFormField(
            obscureText: isPasswordField ? obscureText : false,
            keyboardType: widget.keyboardType,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.black300,
              ),
              suffixIcon: isPasswordField
                  ? GestureDetector(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: Icon(
                        obscureText ? LucideIcons.eye_off : LucideIcons.eye,
                        size: 20,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black300,
                      ),
                    )
                  : null,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.gray400, width: 1),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: BorderSide(color: AppColors.primaryColor, width: 1),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
