import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/core/widgets/custom_elevated_button.dart';
import 'package:quiz_league/home_screen.dart';
import 'package:window_manager/window_manager.dart';

class NotFoundErrorScreen extends StatelessWidget {
  const NotFoundErrorScreen({super.key, required this.onTry});

  final void Function()? onTry;

  @override
  Widget build(BuildContext context) {
    final routeName = ModalRoute.of(context)?.settings.name;

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
          if (onTry != null)
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
            ),
          if (routeName != HomeScreen.routeInfo.name)
            CustomElevatedButton(
              backgroundColor: Colors.indigo.shade600,
              onPressed: () async {
                if (await windowManager.isFullScreen()) {
                  windowManager.setFullScreen(false);
                }
                if (context.mounted) context.go(HomeScreen.routeInfo.path);
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 6,
                children: [
                  Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                  Text(
                    "بازگشت به خانه",
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
