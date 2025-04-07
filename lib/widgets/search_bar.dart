import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_recipe/utils/colors.dart';

class SearchBarFilter extends StatelessWidget {
  final String hintText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onFilterTap;

  const SearchBarFilter({
    Key? key,
    this.hintText = 'Search for recipes',
    this.onChanged,
    this.onFilterTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.only(top:1, bottom: 1),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: Colors.grey, 
                width: 1.0, 
              ),
            ),
            child: Row(
              children: [
                const SizedBox(width: 10),
                const Icon(CupertinoIcons.search, color: AppColors.hinttext,), 
                const SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    onChanged: onChanged,
                    decoration: InputDecoration(
                      hintText: hintText,
                      hintStyle: TextStyle(color: AppColors.hinttext),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 10), 
        GestureDetector(
          onTap: onFilterTap,
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              "assets/svgs/filter.svg",
            ),
          ),
        ),
      ],
    );
  }
}
