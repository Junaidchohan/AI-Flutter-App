// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:ai_flutter_application/models/category.dart';

class CategoryGridItem extends StatelessWidget {
  const CategoryGridItem({
    Key? key,
    required this.category,
    required this.onSelectCategory,
  }) : super(key: key);

  final Category category;
  final void Function() onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onSelectCategory,
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                // ignore: deprecated_member_use
                category.color.withOpacity(0.55),
                // ignore: deprecated_member_use
                category.color.withOpacity(0.9),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            )),
        child: Text(
          category.title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.background,
              ),
        ),
      ),
    );
  }
}
