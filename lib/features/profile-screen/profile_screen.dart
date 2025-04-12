import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildtop(),
    );
  }

  Widget _buildtop() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            top: 20.0, bottom: 10.0, right: 20.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(width: 10.w),
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SvgPicture.asset(
                  'assets/svgs/ellipse.svg',
                )
              ],
            ),
            _buildprofileitem(),
            _buildprofilename(),
            SizedBox(height: 10.h),
            _buildprofilebio(),
            _buildprofiletab(),
            _buildRecipeCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildprofileitem() {
    return Container(
      height: 120.0.h,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/svgs/profile_picture.svg',
          ),
          const SizedBox(width: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Recipe\n",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.hinttext,
                  ),
                ),
                TextSpan(
                  text: "  4",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Followers\n",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.hinttext,
                  ),
                ),
                TextSpan(
                  text: " 2.5M",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(width: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: "Following\n",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: AppColors.hinttext,
                  ),
                ),
                TextSpan(
                  text: "  259",
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.black,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _buildprofilename() {
  return const Text.rich(
    TextSpan(
      text: 'Afuwape Abiodun\n',
      style: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      children: [
        TextSpan(
          text: 'Chef',
          style: TextStyle(
            fontSize: 12.0,
            color: AppColors.hintview,
          ),
        ),
      ],
    ),
  );
}

Widget _buildprofilebio() {
  return const Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text.rich(
        TextSpan(
          text: 'Private Chef\n',
          style: TextStyle(
            fontSize: 12.0,
            color: AppColors.hintview,
          ),
          children: [
            TextSpan(
              text: 'Passionate about food and life.....\n',
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.hintview,
              ),
            ),
            TextSpan(
              text: 'More...',
              style: TextStyle(
                fontSize: 12.0,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    ],
  );
}

Widget _buildprofiletab() {
  return SizedBox(
    height: 60.h,
    width: double.infinity,
    child: DefaultTabController(
      length: 3,
      child: Column(
        children: [
          ButtonsTabBar(
              contentCenter: true,
              width: 110.w,
              contentPadding: const EdgeInsets.all(10.0),
              backgroundColor: AppColors.primaryColor,
              unselectedBackgroundColor: Colors.white24,
              labelStyle: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
              unselectedLabelStyle: const TextStyle(
                  color: AppColors.primaryColor, fontWeight: FontWeight.bold),
              radius: 12.0.h,
              tabs: const [
                Tab(text: "Recipe"),
                Tab(text: "Videos"),
                Tab(text: "Tag"),
              ]),
        ],
      ),
    ),
  );
}

Widget _buildRecipeCard() {
  return ListView.builder(
    itemCount: 4,
    shrinkWrap: true,
    padding: EdgeInsets.zero,
    clipBehavior: Clip.none,
    itemBuilder: (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 10.0),
        child: Container(
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
        ),
      );
    },
  );
}
