import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:food_recipe/widgets/more_options_popup.dart';
import 'package:food_recipe/widgets/primary_button.dart';

class IngredientScreen extends StatefulWidget {
  const IngredientScreen({super.key});

  @override
  State<IngredientScreen> createState() => _IngredientScreenState();
}

class _IngredientScreenState extends State<IngredientScreen> {
  int _currentTabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: _buildTop(),
      ),
    );
  }

  Widget _buildTop() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          SizedBox(height: 40.h),
          _buildAppBar(),
          SizedBox(height: 20.h),
          _buildRecipeCard(),
          SizedBox(height: 20.h),
          _buildRecipeTitle(),
          SizedBox(height: 10.h),
          _buildProfileSection(),
          SizedBox(height: 20.h),
          _buildTabSection(),
        ],
      ),
    );
  }

Widget _buildAppBar() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        icon: const Icon(CupertinoIcons.back),
        onPressed: () => Navigator.pop(context),
      ),
      MoreOptionsPopup(
        onItemSelected: (value) {
          if (value != 'Share') {}
          if (value != 'Rate Recipe') {}
          if (value != 'Review') {
            
          }
          if (value != 'Unsave') {}
          }
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
            right: 10.w,
            child: Row(
              children: [
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
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          'Spicy chicken burger with \nFrench fries',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 5.h),
        Text(
          '(13k Reviews)',
          style: TextStyle(
            color: AppColors.hintview,
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileSection() {
    return Padding(
      padding: const EdgeInsets.only(left: 12.0 , right: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Image.asset('assets/pngs/profile.png', width: 40.w),
              SizedBox(width: 10.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Laura Wilson',
                    style: TextStyle(
                      color: AppColors.black,
                      fontSize: 14.sp,
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/svgs/location.svg'),
                      SizedBox(width: 5.w),
                      Text(
                        'Lagos, Nigeria',
                        style: TextStyle(
                          color: AppColors.hintview,
                          fontSize: 11.sp,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            width: 100.w,
            child: PrimaryButton(
              onPressed: () {},
              label: "Follow",
            ),
          ),
        ],
      ),
    );
  }

Widget _buildTabSection() {
  return SizedBox(
    height: 400.h,
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 12.0, right: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _currentTabIndex = 0),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: _currentTabIndex == 0 
                          ? AppColors.primaryColor 
                          : Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                        bottomLeft: Radius.circular(12.r),
                        bottomRight: Radius.circular(12.r),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Ingredients',
                      style: TextStyle(
                        color: _currentTabIndex == 0 
                            ? Colors.white 
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10.w),
              Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => _currentTabIndex = 1),
                  child: Container(
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: _currentTabIndex == 1 
                          ? AppColors.primaryColor 
                          : Colors.grey[200],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(12.r),
                        topRight: Radius.circular(12.r),
                        bottomLeft: Radius.circular(12.r),
                        bottomRight: Radius.circular(12.r),
                      ),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'Procedure',
                      style: TextStyle(
                        color: _currentTabIndex == 1 
                            ? Colors.white 
                            : Colors.grey,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: IndexedStack(
            index: _currentTabIndex,
            children: [
              _buildIngredientsList(),
              _buildProcedureList(),
            ],
          ),
        ),
      ],
    ),
  );
}

  Widget _buildIngredientsList() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 10,
      separatorBuilder: (context, index) => SizedBox(height: 8.h),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Container(
            height: 76.h,
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.borderfield,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.hinttext,
                width: 1.w,
              ),
            ),
            child: ListTile(
              leading: Image.asset(
                'assets/pngs/fruit.png',
              ),
              title: Text(
                'Tomatoes',
                style: TextStyle(fontSize: 14.sp),
              ),
              trailing: Text(
                '500g',
                style: TextStyle(fontSize: 14.sp),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildProcedureList() {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 15,
      separatorBuilder: (context, index) => SizedBox(height: 8.h),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Container(
            padding: EdgeInsets.all(10.w),
            decoration: BoxDecoration(
              color: AppColors.hinttext,
              borderRadius: BorderRadius.circular(12.r),
              border: Border.all(
                color: AppColors.hinttext,
                width: 1.w,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              
              children: [
                Text(
                  'Step ${index + 1}',
                  style: TextStyle(
                    color: AppColors.black,
                    fontSize: 11.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                  'Nullam auctor, nisl eget ultricies tincidunt, nisl nisl '
                  'aliquam nisl, eget ultricies nisl nisl eget nisl.',
                  style: TextStyle(
                    color: AppColors.hintview,
                    fontSize: 11.sp,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
