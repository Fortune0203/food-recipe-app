import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/colors.dart';

class PasswordInputField extends StatefulWidget {
  final TextEditingController controller;
  final String hint;
  final String? Function(String?) validator;

  const PasswordInputField({
    super.key,
    required this.controller,
    required this.hint,
    required this.validator,
  });

  @override
  State<PasswordInputField> createState() => _PasswordInputFieldState();
}

class _PasswordInputFieldState extends State<PasswordInputField> {
  final FocusNode _focus = FocusNode();
  bool _obscureText = true;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }

  @override
  void dispose() {
    _focus.dispose();
    _focus.removeListener(_onFocusChange);
    super.dispose();
  }

  void _onFocusChange() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextFormField(
        focusNode: _focus,
        cursorColor: Colors.white,
        controller: widget.controller,
        autocorrect: false,
        validator: widget.validator,
        obscureText: _obscureText,
        style: TextStyle(
          fontSize: 14.0.sp,
          fontWeight: FontWeight.w500,
          color: Colors.black,
        ),
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: AppColors.borderfield,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: AppColors.borderfield,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.red,
            ),
            borderRadius: BorderRadius.circular(4.0.r),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 1.0,
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
            fontSize: 14.0.sp,
            color: AppColors.hinttext,
            fontWeight: FontWeight.w300,
          ),
          suffixIcon: GestureDetector(
            child: Container(
              padding: const EdgeInsets.all(14.0),
              child: _obscureText
                  ? SvgPicture.asset(
                      width: 1,
                      height: 1,
                      'assets/svgs/eye_hidden.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white70,
                    )
                  : SvgPicture.asset(
                      'assets/svgs/eye.svg',
                      width: 1,
                      height: 1,
                      // ignore: deprecated_member_use
                      color: Colors.white70,
                    ),
            ),
            onTap: () => setState(() {
              _obscureText = !_obscureText;
            }),
          ),
        ),
      ),
    );
  }
}
