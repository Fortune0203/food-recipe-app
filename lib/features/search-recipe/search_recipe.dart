import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_recipe/app.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:food_recipe/widgets/filter_bottom_sheet.dart';
import 'package:food_recipe/widgets/search_bar.dart';

class SearchRecipe extends StatefulWidget {
  const SearchRecipe({super.key});

  @override
  State<SearchRecipe> createState() => _SearchRecipeState();
}

class _SearchRecipeState extends State<SearchRecipe> {
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
          const Padding(
            padding: EdgeInsets.only(top: 40.0, left: 15.0),
            child: Row(
              children: [
                Icon(CupertinoIcons.back),
                SizedBox(width: 69),
                Text(
                  'Search Recipe',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: _buildsearchbar(),
          ),
          const SizedBox(height: 20),
          _buildbody(),
        ],
      ),
    );
  }

  Widget _buildsearchbar() {
    return SearchBarFilter(
      hintText: 'Search Recipe',
      onChanged: (query) {
        // print('Search query: $query');
      },
      onFilterTap: () async {
        final filters = await showModalBottomSheet<Map<String, dynamic>>(
          context: context,
          builder: (context) => const FilterBottomSheet(),
        );
        print('Selected filters: $filters');
      },
    );
  }

  Widget _buildbody() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Recent Search',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
          ),
          const SizedBox(height: 20),
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            children: List.generate(8, (index) => _buildRecipeCard()),
          ),
        ],
      ),
    );
  }

  Widget _buildRecipeCard() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: const DecorationImage(
          image: AssetImage('assets/pngs/bgimage.png'),
          fit: BoxFit.cover,

        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            right: 7,
            child: Container(
              width: 37,
              height: 16,
              decoration: BoxDecoration(
              color: AppColors.borderColor,
                border: Border.all(
                  color: AppColors.borderColor,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star,
                    color: AppColors.starColor,
                    size: 8,
                  ),
                  SizedBox(width: 2),
                  Text(
                    '4.0',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Positioned(
            bottom: 8,
            left: 8,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Traditional spare ribs \nbaked',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'By Chef John',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
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
