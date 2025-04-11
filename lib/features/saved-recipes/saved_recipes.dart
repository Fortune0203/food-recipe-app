import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/utils/colors.dart';

class SavedRecipes extends StatelessWidget {
  const SavedRecipes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildTop(),
    );
  }
}

Widget _buildTop() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20.0.h),
          child: Text(
            'Saved Recipes',
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
            child: _buildRecipeCard(),
          );
        }),
      ),
    ],
  );
}

Widget _buildRecipeCard() {
  return Container(
    width: 315.w,
    height: 150.h,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.r),
      image: const DecorationImage(
        image: AssetImage('assets/pngs/card1.png'),
        fit: BoxFit.cover,
      ),
    ),
    child: Stack(
      children: [
        Positioned(
          top: 10.h,
          right: 7.w,
          child: Container(
            width: 37.w,
            height: 16.h,
            decoration: BoxDecoration(
              color: AppColors.borderColor,
              border: Border.all(
                color: AppColors.borderColor,
                width: 2.w,
              ),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.star,
                  color: AppColors.starColor,
                  size: 8.sp,
                ),
                SizedBox(width: 2.w),
                Text(
                  '4.0',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 8.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 10.h,
          left: 10.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Spicy Chicken burger with \nfrench fries',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\nby Chef John',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(width: 155.w),
                  SvgPicture.asset('assets/svgs/timer.svg'),
                  SizedBox(width: 5.w),
                  Text(
                    '20 min',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 11.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(width: 10.w),
                  SvgPicture.asset('assets/svgs/saved.svg'),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
