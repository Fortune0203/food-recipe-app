import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../utils/colors.dart';
import '../../widgets/input_field.dart';
import '../../widgets/primary_button.dart';
import '../../widgets/search_bar.dart';
import '../../widgets/selectable_button.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildtop(),
    );
  }

  Widget _buildtop() {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 25.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context, '/ingridient-screen');
                  },
                  child: Icon(CupertinoIcons.back),
                ),
                const SizedBox(width: 100),
                const Text(
                  'Reviews',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          _buildcommentnumber(),
          const SizedBox(height: 20),
          _buildcommentfield(),
          const SizedBox(height: 20),
          _buildcommentbody(),
        ],
      ),
    );
  }

  Widget _buildcommentnumber() {
    return const Padding(
      padding: EdgeInsets.only(left: 30.0, right: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '200 Comments',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: AppColors.borderfield,
            ),
          ),
          Text(
            '155 Saved',
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: AppColors.borderfield,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildcommentfield() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 30.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Leave a comment',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                    color: AppColors.black,
                  )),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Container(
          padding: EdgeInsets.only(left: 30.w, right: 30.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Stack(
            children: [
              InputField(
                hint: 'Say Something',
                textInputType: TextInputType.text,
                controller: TextEditingController(),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a comment';
                  }
                  return null;
                },
              ),
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: SizedBox(
                  width: 80.w,
                  child: PrimaryButton(
                    onPressed: () {},
                    label: "send",
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildcommentbody() {
    return ListView.builder(
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding:
                const EdgeInsets.only(left: 32.0, right: 85.0, bottom: 20.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/pngs/profile.png',
                      width: 31.w,
                      height: 31.h,
                    ),
                    const SizedBox(width: 10),
                    const Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 15.0),
                          child: Text('Bella Throne',
                              style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                                color: AppColors.black,
                              )),
                        ),
                        Text(
                          'June 12, 2020 - 19:35',
                          style: TextStyle(
                            fontSize: 8,
                            color: AppColors.borderfield,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Text(
                  'Lorem Ipsum tempor incididunt ut labore et dolore,inise \nvoluptate velit esse cillum',
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Row(
                    children: [
                      SelectableButtonWidget(
                        onChanged: (selectedValue) {
                          print('Selected value: $selectedValue');
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
