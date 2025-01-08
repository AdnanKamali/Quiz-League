import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/home_screen.dart';
import 'package:window_manager/window_manager.dart';

class Surrender extends StatelessWidget {
  const Surrender({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.flag,
                color: Colors.white,
              ),
              Text(
                "تسلیم",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            windowManager.setFullScreen(false);
            context.go(HomeScreen.routeInfo.path);
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.redAccent,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6))),
          child: Row(
            spacing: 4,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.flag,
                color: Colors.white,
              ),
              Text(
                "تسلیم",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
