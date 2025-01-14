import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TeamName extends StatelessWidget {
  const TeamName({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 45.sp,
        color: Colors.white,
      ),
    );
  }
}
