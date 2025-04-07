import 'package:flutter/material.dart';
import 'package:food_recipe/utils/colors.dart';
import 'package:food_recipe/widgets/primary_button.dart';

class FilterBottomSheet extends StatefulWidget {
  const FilterBottomSheet({super.key});

  @override
  State<FilterBottomSheet> createState() => _FilterBottomSheetState();
}

class _FilterBottomSheetState extends State<FilterBottomSheet> {
  String? selectedTimeFilter;
  int? selectedRateFilter;
  String? selectedCategoryFilter;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'Filter Search',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          
          _buildSectionHeader('Time'),
          const SizedBox(height: 8),
          _buildFilterRow([
            'All',
            'Newest',
            'Oldest',
            'Popularity',
          ], selectedTimeFilter, (value) {
            setState(() {
              selectedTimeFilter = value;
            });
          }),
          const SizedBox(height: 24),

          _buildSectionHeader('Rate'),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                _buildRateChip(5),
                const SizedBox(width: 8),
                _buildRateChip(4),
                const SizedBox(width: 8),
                _buildRateChip(3),
                const SizedBox(width: 8),
                _buildRateChip(2),
                const SizedBox(width: 8),
                _buildRateChip(1),
              ],
            ),
          ),
          const SizedBox(height: 24),

          _buildSectionHeader('Category'),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8.0,
              children: [
                'All',
                'Cereal',
                'Vegetables',
                'Dinner',
                'Chinese',
                'Local Dish',
                'Fruit',
                'BreakFast',
                'Spanish',
                'Lunch'
              ].map((category) {
                return _buildCategoryChip(category);
              }).toList(),
            ),
          ),
          const SizedBox(height: 24),

          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.only(left: 60.0, right: 60),
              child: PrimaryButton(
                onPressed: () {
                  Navigator.pop(context, {
                    'time': selectedTimeFilter,
                    'rate': selectedRateFilter,
                    'category': selectedCategoryFilter,
                  });
                },
                label: "Filter",
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildFilterRow(
      List<String> options, String? selectedValue, Function(String) onSelected) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: options.map((option) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: ChoiceChip(
              label: Text(option),
              selected: selectedValue == option,
              onSelected: (selected) {
                onSelected(selected ? option : '');
              },
              selectedColor: AppColors.primaryColor,
              backgroundColor: Colors.white,
              labelStyle: TextStyle(
                color: selectedValue == option ? Colors.white : AppColors.primaryColor,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
                side: BorderSide(color: AppColors.primaryColor),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildRateChip(int stars) {
    final isSelected = selectedRateFilter == stars;
    return ChoiceChip(
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '$stars',
            style: TextStyle(
              color: isSelected ? Colors.white : AppColors.primaryColor,
            ),
          ),
          const SizedBox(width: 4),
          Icon(
            Icons.star,
            size: 16,
            color: isSelected ? Colors.white : AppColors.primaryColor,
          ),
        ],
      ),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          selectedRateFilter = selected ? stars : null;
        });
      },
      selectedColor: AppColors.primaryColor,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: AppColors.primaryColor),
      ),
    );
  }

  Widget _buildCategoryChip(String category) {
    final isSelected = selectedCategoryFilter == category;
    return ChoiceChip(
      label: Text(
        category,
        style: TextStyle(
          color: isSelected ? Colors.white : AppColors.primaryColor,
        ),
      ),
      selected: isSelected,
      onSelected: (selected) {
        setState(() {
          selectedCategoryFilter = selected ? category : null;
        });
      },
      selectedColor: AppColors.primaryColor,
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        side: BorderSide(color: AppColors.primaryColor),
      ),
    );
  }
}