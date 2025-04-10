import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_recipe/features/model/homescreen_models.dart';
import 'package:food_recipe/features/search-recipe/search_recipe.dart';
import 'package:food_recipe/widgets/buttomnav_bar.dart';
import 'package:food_recipe/widgets/search_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    const HomeScreen(),
    FavoriteScreen(),
    AddScreen(),
    Notifications(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  //TabController _controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: buildBody(),
      ),
    );
  }
}

class buildBody extends StatelessWidget {
  const buildBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0.w),
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 20.0.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                    text: 'Hello, Jega\n',
                    style: TextStyle(
                        fontSize: 30.0.h, fontWeight: FontWeight.bold),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'What are you cooking today?',
                        style: TextStyle(fontSize: 16.0.h, color: Colors.grey),
                      ),
                    ]),
              ),
              Padding(
                padding: EdgeInsets.only(right: 20.0.w),
                child: Image.asset("assets/pngs/Avatar.png",
                    height: 50.0.h, fit: BoxFit.contain),
              )
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: SearchBarFilter(
              hintText: 'Search recipe',
            ),
          ),
          const TabBarWidget(),
        ]),
      ),
    );
  }
}

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 6,
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonsTabBar(
                contentPadding: const EdgeInsets.all(10.0),
                backgroundColor: const Color(0xFF129575),
                unselectedBackgroundColor: Colors.white,
                labelStyle: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
                unselectedLabelStyle: const TextStyle(
                    color: Color(0xFF129575), fontWeight: FontWeight.bold),
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
              SizedBox(
                height: 10.0.h,
              ),
              const Expanded(
                  child: TabBarView(children: [
                DishItemWidget(),
                Center(child: Text("Indian")),
                Center(child: Text("Italian")),
                Center(child: Text("Asian")),
                Center(child: Text("Chinese")),
                Center(child: Text("Mexican")),
              ])),
            ],
          ),
        ));
  }
}

class DishItemWidget extends StatelessWidget {
  const DishItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.green,
          height: 300,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(
              vertical: 0.0,
            ),
            scrollDirection: Axis.horizontal,
            itemCount: dishItem.length,
            itemBuilder: (context, index) {
              final dish = dishItem[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Dishes(
                  name: dish['name'],
                  time: dish['time'],
                  image: dish['image'],
                ),
              );
            },
          ),
        ),
        Text("New Recipes",
            style: TextStyle(fontSize: 20.0.h, fontWeight: FontWeight.bold)),
        const NewRecipesCard()
      ],
    );
  }
}

class NewRecipesCard extends StatelessWidget {
  const NewRecipesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      height: 150,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Delicious Pizza",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: List.generate(
                      5,
                      (index) =>
                          const Icon(Icons.star, size: 16, color: Colors.amber),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 16,
                        child: Image.asset(
                          "assets/pngs/Avatar.png",
                        ),
                      ),
                      const SizedBox(width: 8),
                      const Text("Chef Mario"),
                      const Spacer(),
                      const Row(
                        children: [
                          Icon(Icons.timer, size: 16, color: Colors.grey),
                          SizedBox(width: 4),
                          Text("20 mins"),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          // Big image on the right (overflowing)
          Positioned(
            right: -20,
            top: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                "assets/pngs/food.png",
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
