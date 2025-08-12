import 'package:flutter/material.dart';
import 'package:quiz_league/data/models/category_model/category_model.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;
  final bool isSelected;
  const CategoryItem(
      {super.key, required this.category, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    final categoryItem = SizedBox(
      width: 200,
      height: 150,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 4,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
              child: Image.network(
                category.logo,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return const Center(child: CircularProgressIndicator());
                },
                errorBuilder: (context, error, stackTrace) {
                  return const Center(child: Icon(Icons.error));
                },
              ),
            ),
            Container(
              height: 80,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.8),
                    Colors.black.withValues(alpha: 0.0)
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 15,
              right: 15,
              left: 15,
              child: Text(
                category.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Vazirmatn',
                  shadows: [
                    Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
    if (isSelected) {
      return Stack(
        children: [
          categoryItem,
          Container(
            width: 200,
            height: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blueGrey.withValues(alpha: 0.2)),
          ),
        ],
      );
    }
    return categoryItem;
  }
}
