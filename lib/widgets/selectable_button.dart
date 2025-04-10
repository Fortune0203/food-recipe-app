import 'package:flutter/material.dart';
import 'package:food_recipe/utils/colors.dart';

class SelectableButtonWidget extends StatefulWidget {
  final ValueChanged<int?>? onChanged; // Optional callback for selection changes

  const SelectableButtonWidget({Key? key, this.onChanged}) : super(key: key);

  @override
  _SelectableButtonWidgetState createState() => _SelectableButtonWidgetState();
}

class _SelectableButtonWidgetState extends State<SelectableButtonWidget> {
  int? selectedValue; 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _buildSelectableButton(Icons.thumb_up_alt, '9'),
        SizedBox(width: 5),
        _buildSelectableButton(Icons.thumb_down_alt, '2'),
      ],
    );
  }

  Widget _buildSelectableButton(IconData icon, String value ) {
    final isSelected = selectedValue == int.tryParse(value);
    
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedValue = isSelected ? null : int.parse(value);
          if (widget.onChanged != null) {
            widget.onChanged!(selectedValue);
          }
        });
      },
      child: Container(
        width: 29,
        height: 14,
        decoration: BoxDecoration(
          color: isSelected ? AppColors.primaryColor : Colors.grey[200],
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: isSelected ? AppColors.primaryColor : Colors.grey,
          ),
        ),
        child: Center(
          child: Text(
            value,
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}