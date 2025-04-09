import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:food_recipe/widgets/copybutton.dart';

class MoreOptionsPopup extends StatelessWidget {
  final Function(String)? onItemSelected;

  const MoreOptionsPopup({super.key, this.onItemSelected});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      icon: SvgPicture.asset('assets/svgs/dots.svg'),
      itemBuilder: (context) => [
        _buildMenuItem('Share', Icons.share_outlined),
        _buildMenuItem('Rate Recipe', Icons.star_outline),
        _buildMenuItem('Review', Icons.edit_note_outlined),
        _buildMenuItem('Unsave', Icons.bookmark_remove_outlined),
      ],
      onSelected: (value) {
        if (value == 'Share') {
          _showSharePopup(context);
        } else if (value == 'Rate Recipe') {
          _showRateRecipePopup(context);
        } else if (onItemSelected != null) {
          onItemSelected!(value);
        }
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.r),
      ),
      offset: Offset(0, 40.h),
    );
  }

  PopupMenuItem<String> _buildMenuItem(String text, IconData icon) {
    return PopupMenuItem<String>(
      value: text,
      height: 40.h,
      child: Row(
        children: [
          Icon(icon, size: 20.sp, color: Colors.black87),
          SizedBox(width: 12.w),
          Text(
            text,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black87,
            ),
          ),
        ],
      ),
    );
  }

  void _showSharePopup(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5), // Blur effect
      builder: (context) => Center(
        child: Container(
          width: 300.w,
          padding: EdgeInsets.all(20.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.r),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Recipe Link',
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.close, size: 15.sp),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Text(
                'Copy recipe link and share your recipe link with friends and family.',
                style: TextStyle(
                  fontSize: 11.sp,
                  color: AppColors.hintview,
                ),
              ),
              SizedBox(height: 20.h),
              Container(
                padding: EdgeInsets.all(12.w),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10.r),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                'app.Recipe.co/joliof_rice',
                                style: TextStyle(
                                  fontSize: 11.sp,
                                ),
                              ),
                            ),
                            SizedBox(width: 8.w),
                            CopyButton(
                              onPressed: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(content: Text('Link copied!')),
                                );
                                Navigator.pop(context);
                              },
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildShareButton(IconData icon, String label) {
    return Column(
      children: [
        Container(
          width: 50.w,
          height: 50.w,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            shape: BoxShape.circle,
          ),
          child: Icon(icon, size: 24.sp),
        ),
        SizedBox(height: 5.h),
        Text(
          label,
          style: TextStyle(fontSize: 12.sp),
        ),
      ],
    );
  }

  void _showRateRecipePopup(BuildContext context) {
    int selectedStars = 0;

    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Center(
              child: Container(
                width: 300.w,
                padding: EdgeInsets.all(20.w),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Rate Recipe',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(5, (index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedStars = index + 1;
                            });
                          },
                          child: Icon(
                            Icons.star,
                            size: 30.sp,
                            color: index < selectedStars
                                ? Colors.amber
                                : Colors.grey[300],
                          ),
                        );
                      }),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pop(context);
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content:
                                  Text('$selectedStars star rating submitted!'),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.amber,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.r),
                          ),
                          padding: EdgeInsets.only(top: 4.h, bottom: 4.h, right: 30.w, left: 30.w),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Text(
                            'Send',
                            style: TextStyle(
                              fontSize: 14.sp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
