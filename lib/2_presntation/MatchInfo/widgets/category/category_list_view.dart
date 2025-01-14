import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({super.key, required this.children});
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: children,
      ),
    );
  }
}
