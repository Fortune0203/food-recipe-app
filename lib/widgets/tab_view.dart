import 'package:flutter/material.dart';

class CustomTabView extends StatefulWidget {
  final List<String> tabTitles;
  final List<Widget> tabContents;
  final Function(int)? onTabChanged;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activeTextColor;
  final Color? inactiveTextColor;
  final double? buttonHeight;
  final double? borderRadius;
  final EdgeInsetsGeometry? buttonPadding;

  const CustomTabView({
    super.key,
    required this.tabTitles,
    required this.tabContents,
    this.onTabChanged,
    this.activeColor,
    this.inactiveColor,
    this.activeTextColor,
    this.inactiveTextColor,
    this.buttonHeight,
    this.borderRadius,
    this.buttonPadding,
  }) : assert(tabTitles.length == tabContents.length);

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: widget.tabTitles.length,
      vsync: this,
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Custom Tab Bar
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: List.generate(
              widget.tabTitles.length,
              (index) => Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      right: index < widget.tabTitles.length - 1 ? 8.0 : 0),
                  child: PrimaryButtonTab(
                    text: widget.tabTitles[index],
                    isActive: _tabController.index == index,
                    onPressed: () => _tabController.animateTo(index),
                    height: widget.buttonHeight,
                    borderRadius: widget.borderRadius,
                    padding: widget.buttonPadding,
                    activeColor: widget.activeColor,
                    inactiveColor: widget.inactiveColor,
                    activeTextColor: widget.activeTextColor,
                    inactiveTextColor: widget.inactiveTextColor,
                  ),
                ),
              ),
            ),
          ),
        ),

        // Tab Content
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: widget.tabContents,
          ),
        ),
      ],
    );
  }
}

class PrimaryButtonTab extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback onPressed;
  final double? height;
  final double? borderRadius;
  final EdgeInsetsGeometry? padding;
  final Color? activeColor;
  final Color? inactiveColor;
  final Color? activeTextColor;
  final Color? inactiveTextColor;

  const PrimaryButtonTab({
    super.key,
    required this.text,
    required this.isActive,
    required this.onPressed,
    this.height,
    this.borderRadius,
    this.padding,
    this.activeColor,
    this.inactiveColor,
    this.activeTextColor,
    this.inactiveTextColor,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return SizedBox(
      height: height ?? 48.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive
              ? (activeColor ?? theme.primaryColor)
              : (inactiveColor ?? theme.cardColor),
          foregroundColor: isActive
              ? (activeTextColor ?? Colors.white)
              : (inactiveTextColor ?? theme.textTheme.bodyLarge?.color),
          padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 8.0),
          ),
          elevation: 0,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}