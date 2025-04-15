import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/widgets/input_field.dart';
import 'package:food_recipe/widgets/password_field.dart';

import '../../../../widgets/primary_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  text: 'Hello,\n',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Welcome Back!',
                      style: TextStyle(fontSize: 16),
                    ),
                  ]),
            ),
          ),
          const SizedBox(height: 30),
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
          Column(children: [
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
                    hint: "Enter Email",
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
                    "Enter Password",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 8),
                  PasswordInputField(
                    controller: TextEditingController(),
                    hint: "Enter Password",
                    validator: (String? value) => null,
                  ),
                  const SizedBox(height: 15),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        fontSize: 12.0.sp,
                        fontWeight: FontWeight.w200,
                        color: AppColors.primaryColor2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30),
                    child: PrimaryButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/homescreen");
                      },
                      label: "Sign Up",
                    ),
                  ),
                  const SizedBox(height: 20),
                  _buildfooter(),
                ],
              ),
            )
          ])
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
            text: 'Don' 't have an account?',
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
