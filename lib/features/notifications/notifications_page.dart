import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildtop(),
    );
  }

  Widget _buildtop() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0),
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
          const SizedBox(height: 5),
          _buildnotificationtab(),
          _buildtodaytext(),
          _buildnotificationbody(),
          _buildyesterdaytext(),
          _buildnotificationbody2(),
        ],
      ),
    );
  }

  Widget _buildnotificationtab() {
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
}

Widget _buildtodaytext() {
  return const Center(
    child: Text(
      'Today',
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    ),
  );
}

Widget _buildnotificationbody() {
  return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
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
      });
}

Widget _buildyesterdaytext() {
  return const Center(
    child: Text(
      'Yesterday',
      style: TextStyle(
        fontSize: 12.0,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    ),
  );
}

Widget _buildnotificationbody2() {
  return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      // physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
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
      });
}
