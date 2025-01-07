import 'package:flutter/material.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class LoadingContainer extends StatelessWidget {
  const LoadingContainer({super.key, required this.size});

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: Shimmer(
        duration: Duration(seconds: 2),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.indigoAccent.shade100,
              borderRadius: BorderRadius.circular(16)),
          width: size.width,
          height: size.height,
        ),
      ),
    );
  }
}
