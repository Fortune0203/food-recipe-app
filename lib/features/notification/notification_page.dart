import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:food_recipe/widgets/input_field.dart';
import 'package:food_recipe/widgets/primary_button.dart';
import 'package:food_recipe/widgets/selectable_button.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 30),
          child: Center(
            child: Text(
              'Notifications',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        _buildNotificationTab(),
        Expanded(
          child: ListView(
            children: [
              _buildTodayText(),
              _buildNotificationBody(),
              _buildYesterdayText(),
              _buildNotificationBody2(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationTab() {
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
                Tab(text: "All"),
                Tab(text: "Read"),
                Tab(text: "Unread"),
              ]),
          ],
        ),
      ),
    );
  }

  Widget _buildTodayText() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Text(
          'Today',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationBody() {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
          child: Container(
            height: 85.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.borderfield,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Recipe Alert',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              )),
                          Text(
                            "Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate velit esse cillum",
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.hintview,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '10 mins ago',
                            style: TextStyle(
                                fontSize: 8, color: AppColors.hintview),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/svgs/notification.svg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget _buildYesterdayText() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: Center(
        child: Text(
          'Yesterday',
          style: TextStyle(
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
      ),
    );
  }

  Widget _buildNotificationBody2() {
    return Column(
      children: List.generate(3, (index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
          child: Container(
            height: 85.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: AppColors.borderfield,
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('New Recipe Alert',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              )),
                          Text(
                            "Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate velit esse cillum",
                            style: TextStyle(
                              fontSize: 10,
                              color: AppColors.hintview,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '10 mins ago',
                            style: TextStyle(
                                fontSize: 8, color: AppColors.hintview),
                          ),
                        ],
                      ),
                      SvgPicture.asset('assets/svgs/notification.svg'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}