import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/features/profile-screen/profile_screen.dart';
import 'package:food_recipe/utils/colors.dart';

import '../../widgets/bottom_nav.dart';
import '../../widgets/filter_bottom_sheet.dart';
import '../../widgets/recipecard.dart';
import '../../widgets/recipeshowcard.dart';
import '../../widgets/search_bar.dart';
import '../model/recipe.dart';
import '../notification/notification_page.dart';
import '../saved-recipes/saved_recipes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
  
  final screens = [
    const _HomeContent(), 
    const SavedRecipes(),
    const NotificationsPage(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex], 
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        onPressed: () {
          Navigator.pushNamed(context, '/add');
        },
        backgroundColor: AppColors.primaryColor,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNav(
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
        onFabTap: () {
          Navigator.pushNamed(context, '/add');
        },
      ),
    );
  }
}
class _HomeContent extends StatelessWidget {
  const _HomeContent();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello Jega',
                        style: TextStyle(
                          fontSize: 20.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Text(
                        'What are you cooking today?',
                        style: TextStyle(
                          fontSize: 16.h,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    "assets/pngs/Avatar.png",
                    height: 50.h,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: _buildSearchBar(context),
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: _buildTabController(context),
            ),
            SizedBox(height: 20.h),
            _buildRecipeCard(context),
            SizedBox(height: 20.h),
            _buildNewRecipe(context),
            SizedBox(height: 80.h),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context) {
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

  Widget _buildTabController(BuildContext context) {
    return SizedBox(
      height: 50.h,
      child: DefaultTabController(
        length: 6,
        child: Column(
          children: [
            ButtonsTabBar(
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
                Tab(text: "Indian"),
                Tab(text: "Italian"),
                Tab(text: "Asian"),
                Tab(text: "Chinese"),
                Tab(text: "Mexican"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRecipeCard(BuildContext context) {
    final recipes = [
      {
        'title': 'Classic Greek \nSalad',
        'time': '15 Mins',
        'imageAsset': 'assets/pngs/dishone.png'
      },
      {
        'title': 'Pasta Carbonara',
        'time': '25 Mins',
        'imageAsset': 'assets/pngs/dishtwo.png'
      },
      {
        'title': 'Pasta Carbonara',
        'time': '25 Mins',
        'imageAsset': 'assets/pngs/dishtwo.png'
      },
      {
        'title': 'Pasta Carbonara',
        'time': '25 Mins',
        'imageAsset': 'assets/pngs/dishtwo.png'
      },
    ];

    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 220.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.w, top: 30.h),
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 15.w),
                child: RecipeShowCard(
                  title: recipes[index]['title']!,
                  time: recipes[index]['time']!,
                  imageAsset: recipes[index]['imageAsset']!,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildNewRecipe(BuildContext context) {
    final List<Recipe> recipeList = [
      Recipe(
          title: "Steak with tomato...",
          rating: 5,
          author: "James Milner",
          time: "20 mins",
          imageUrl: "your_image_url_here",
          authorImageUrl: "author_image_url_here"),
      Recipe(
          title: "Steak with tomato...",
          rating: 5,
          author: "James Milner",
          time: "20 mins",
          imageUrl: "your_image_url_here",
          authorImageUrl: "author_image_url_here"),
      Recipe(
          title: "Steak with tomato...",
          rating: 5,
          author: "James Milner",
          time: "20 mins",
          imageUrl: "your_image_url_here",
          authorImageUrl: "author_image_url_here"),
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 30.w),
          child: Text(
            "New Recipe",
            style: TextStyle(
              fontSize: 20.h,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 5.h),
        Container(
          height: 145.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 30.w, top: 30),
            itemCount: recipeList.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(right: 16.w),
                child: RecipeCard(
                  title: recipeList[index].title,
                  rating: recipeList[index].rating,
                  author: recipeList[index].author,
                  time: recipeList[index].time,
                  imageUrl: recipeList[index].imageUrl,
                  authorImageUrl: recipeList[index].authorImageUrl,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}