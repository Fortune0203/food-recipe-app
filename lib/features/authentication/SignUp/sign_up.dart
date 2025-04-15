import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/widgets/input_field.dart';
import 'package:food_recipe/widgets/password_field.dart';

import '../../../../widgets/primary_button.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildbody(),
    );
  }

  Widget _buildbody() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom:
            MediaQuery.of(context).viewInsets.bottom, // Accounts for keyboard
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 30.0.w,
              top: 50.0.h,
            ),
            child: const Text.rich(
              TextSpan(
                  text: 'Create an account\n',
                  style: TextStyle(fontSize: 24),
                  children: <TextSpan>[
                    TextSpan(
                      text:
                          'Let’s help you set up your account, \nit won’t take long.',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 11),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 20),
          _buildform(),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildform() {
    return ListView(
        shrinkWrap: true,
        physics: const ClampingScrollPhysics(),
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Name",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    InputField(
                      controller: TextEditingController(),
                      hint: "Name",
                      validator: (String? value) => null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    InputField(
                      controller: TextEditingController(),
                      hint: "Email",
                      validator: (String? value) => null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    PasswordInputField(
                      controller: TextEditingController(),
                      hint: "Password",
                      validator: (String? value) => null,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Confirm Password",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(height: 8),
                    PasswordInputField(
                      controller: TextEditingController(),
                      hint: "Confirm Password",
                      validator: (String? value) => null,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 40.0),
                child: CheckboxListTile(
                  value: false,
                  title: Text(
                    "Accept terms & Condition ",
                    style: TextStyle(
                      fontSize: 12.0.sp,
                      fontWeight: FontWeight.w200,
                      color: AppColors.primaryColor2,
                    ),
                  ),
                  activeColor: AppColors.primaryColor2,
                  checkColor: Colors.white,
                  controlAffinity: ListTileControlAffinity.leading,
                  contentPadding: EdgeInsets.zero,
                  visualDensity:
                      const VisualDensity(horizontal: -4, vertical: -4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0.r),
                  ),
                  onChanged: (bool? newValue) {
                    // setState(() {
                    // value: true;
                    // });
                  },
                ),
              ),
              const SizedBox(height: 26),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30),
                child: PrimaryButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/signin');
                  },
                  label: "Sign Up",
                ),
              ),
              const SizedBox(height: 20),
              _buildfooter(),
            ],
          ),
        ]);
  }

  Widget _buildfooter() {
    return Column(
      children: [
        SvgPicture.asset(
          "assets/svgs/signinline.svg",
          height: 20.0.h,
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildSocialButton(
              icon: SvgPicture.asset(
                "assets/svgs/google.svg",
              ),
              onPressed: () {},
            ),
            SizedBox(width: 20.0.w),
            _buildSocialButton(
              icon: SvgPicture.asset(
                "assets/svgs/facebook.svg",
              ),
              onPressed: () {},
            ),
          ],
        ),
        const SizedBox(height: 20),
        const Text.rich(
          TextSpan(
            text: 'Already a member? ',
            style: TextStyle(fontSize: 12),
            children: <TextSpan>[
              TextSpan(
                text: 'Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                  color: AppColors.primaryColor2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSocialButton({
    required Widget icon,
    required VoidCallback onPressed,
  }) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(8.0.r),
      child: Container(
        width: 44.0.w,
        height: 44.0.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8.0.r),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Center(child: icon),
      ),
    );
  }
}
