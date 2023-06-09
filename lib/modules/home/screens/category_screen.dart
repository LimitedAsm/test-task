import 'package:flutter/material.dart';
import 'package:test_task/modules/home/screens/product_dialog.dart';
import 'package:test_task/modules/home/widgets/category_app_bar.dart';

import '../models/category.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.name,});

  final CategoryName name;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(name: widget.name,),
      body: Center(
        child: ElevatedButton(
          onPressed: () => ProductDialog.show(context),
          child: Text('Go to dialog'),
        ),
      ),
    );
  }
}

