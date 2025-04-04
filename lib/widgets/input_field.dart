import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';

class InputField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;
  final void Function(String?)? onChanged;
  final TextInputType textInputType;

  const InputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
    this.textInputType = TextInputType.text,
    this.onChanged,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: double.infinity,
      child: TextFormField(
        cursorColor: Colors.white,
        controller: widget.controller,
        autocorrect: false,
        validator: widget.validator,
        onChanged: widget.onChanged,
        keyboardType: widget.textInputType,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0.w,
              color: AppColors.borderfield,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0.w,
              color: AppColors.borderfield,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0.w,
              color: AppColors.primaryColor,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0.w,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1.0.w,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          errorMaxLines: 3,
          contentPadding: EdgeInsets.fromLTRB(
            12.0.w,
            15.0.h,
            12.0.w,
            15.0.h,
          ),
          hintText: widget.hint,
          hintStyle: TextStyle(
            fontSize: 11.0.sp,
            color: AppColors.hinttext,
            fontWeight: FontWeight.w300,
          ),
        ),
        style: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.white,
        ),
      ),
    );
  }
}
