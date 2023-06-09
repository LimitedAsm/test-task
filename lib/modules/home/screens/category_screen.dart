import 'package:flutter/material.dart';
import 'package:test_task/modules/home/screens/product_dialog.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Категоря'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => ProductDialog.show(context),
          child: Text('Go to dialog'),
        ),
      ),
    );
  }
}
