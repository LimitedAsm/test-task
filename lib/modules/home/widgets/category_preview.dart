import 'package:flutter/material.dart';

import '../models/category.dart';
import '../screens/category_screen.dart';

class CategoryPreview extends StatelessWidget {
  const CategoryPreview({super.key, required this.category});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return CategoryScreen(
              name: category.name,
            );
          }),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Stack(
            children: [
              _buildImage(),
              _buildName(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildName(context) {
    double halfWidthScreen = MediaQuery.of(context).size.width / 2;
    return Container(
      constraints: BoxConstraints(maxWidth: halfWidthScreen),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 12),
        child: Text(
          category.name,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Image.network(category.imageUrl);
  }
}
