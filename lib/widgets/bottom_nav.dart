import 'package:flutter/material.dart';
import 'package:food_recipe/utils/colors.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;
  final VoidCallback onFabTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
    required this.onFabTap,
  });

  @override
  Widget build(BuildContext context) {
    final icons = [
      Icons.home,
      Icons.bookmark_border,
      Icons.add,
      Icons.notifications_none,
      Icons.person_outline,
    ];

    return BottomAppBar(      
      color: Colors.white24,
      shape: const CircularNotchedRectangle(),
      notchMargin: 6.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: Icon(Icons.home, 
                color: currentIndex == 0 ? AppColors.primaryColor : AppColors.borderfield),
            onPressed: () => onTap(0),
          ),
          IconButton(
            icon: Icon(Icons.bookmark, 
                color: currentIndex == 1 ? AppColors.primaryColor : AppColors.borderfield),
            onPressed: () => onTap(1),
          ),
          const SizedBox(width: 40), // Space for FAB
          IconButton(
            icon: Icon(Icons.notifications, 
                color: currentIndex == 2 ? AppColors.primaryColor : AppColors.borderfield),
            onPressed: () => onTap(2), // Should set index to 2
          ),
          IconButton(
            icon: Icon(Icons.person, 
                color: currentIndex == 3 ? AppColors.primaryColor : AppColors.borderfield),
            onPressed: () => onTap(3),
          ),
        ],
      ),
    );
  }
}

// List.generate(5, (index) {
//           if (index == 2) return const SizedBox(width: 40); 

//           final isSelected = index == currentIndex;
//           return IconButton(
//             onPressed: () => onTap(index),
//             icon: Container(
//               padding: const EdgeInsets.all(6),
//               child: Icon(
//                 size:30,
//                 icons[index],
//                 color: isSelected
//                     ? AppColors.primaryColor
//                     : ,
//               ),
//             ),
//           );
//         }),