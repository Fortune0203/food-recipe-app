import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/utils/colors.dart';

class CopyButton extends StatelessWidget {
  final VoidCallback onPressed;
  
  const CopyButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material( 
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(8.r),
        child: Container(
          padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 10.h, bottom: 10.h),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(
            'Copy Link',
            style: TextStyle(
              fontSize: 11.sp,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}