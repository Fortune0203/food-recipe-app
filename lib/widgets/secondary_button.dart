import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../utils/colors.dart';

class SecondaryButton extends StatelessWidget {
  final Function()? onPressed;
  final String label;
  final bool isLoading;
  final bool isDisabled;
  final Widget? icon;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.label,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: isLoading || isDisabled ? () {} : onPressed,
      child: Container(
        height: 48.h,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0.r),
          color: isDisabled
              ? AppColors.secondaryButton.withOpacity(0.5)
              : isLoading
                  ? AppColors.secondaryButton.withOpacity(0.6)
                  : AppColors.secondaryButton,
        ),
        child: isLoading
            ? Center(
                child: LoadingAnimationWidget.inkDrop(
                  color: Colors.white,
                  size: 18.0.w,
                ),
              )
            : Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (icon != null) icon!,
                  if (icon != null) SizedBox(width: 10.0.w),
                  Text(
                    label,
                    style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
      ),
    );
  }
}
