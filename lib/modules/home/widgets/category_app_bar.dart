import 'package:flutter/material.dart';
import 'package:test_task/modules/home/models/category.dart';
import 'package:test_task/widgets/custom_app_bar.dart';

class CategoryAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CategoryAppBar({
    super.key,
    required this.name,
  });

  final CategoryName name;

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Text(
        name,
        style: Theme.of(context).textTheme.titleMedium,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
