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
        children: List.generate(5, (index) {
          if (index == 2) return const SizedBox(width: 40); 

          final isSelected = index == currentIndex;
          return IconButton(
            onPressed: () => onTap(index),
            icon: Container(
              padding: const EdgeInsets.all(6),
              child: Icon(
                icons[index],
                color: isSelected
                    ? AppColors.primaryColor
                    : AppColors.borderfield,
              ),
            ),
          );
        }),
      ),
    );
  }
}
