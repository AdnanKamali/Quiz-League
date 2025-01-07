import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';

class NotFoundErrorScreen extends StatelessWidget {
  const NotFoundErrorScreen({super.key, required this.onTry});

  final void Function()? onTry;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          Text(
            "404 !",
            style: TextStyle(
                fontSize: 160.sp,
                color: Colors.indigoAccent.shade100,
                fontWeight: FontWeight.bold),
          ),
          Text(
            "دیتایی دریافت نشده",
            style: TextStyle(
                fontSize: 48.sp,
                color: Colors.indigoAccent.shade100,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 26),
          CustomElevatedButton(
            backgroundColor: Colors.deepOrange,
            onPressed: onTry,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              spacing: 6,
              children: [
                Icon(
                  Icons.refresh_outlined,
                  color: Colors.white,
                ),
                Text(
                  "دریافت مجدد داده",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
