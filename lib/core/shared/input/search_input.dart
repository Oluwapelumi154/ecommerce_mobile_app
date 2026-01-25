import 'package:ecommerce_mobile_app/core/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lucide/flutter_lucide.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: AppColors.white,
                contentPadding: EdgeInsets.only(
                  top: 12,
                  bottom: 12,
                  left: 13,
                  right: 13,
                ),
                hintText: "Search 'Mans Shoes",
                hintStyle: TextStyle(
                  color: AppColors.black300,
                  fontWeight: FontWeight.w500,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.black100),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.black100),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(color: AppColors.black100),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          SizedBox(
            width: 50,
            height: 50,
            child: IconButton(
              style: IconButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(15),
                ),
                backgroundColor: AppColors.primaryColor,
              ),
              onPressed: () {},
              icon: Icon(
                LucideIcons.search,
                color: AppColors.white,
                fontWeight: FontWeight.w600,
                size: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
