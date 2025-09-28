import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_league/UI/time_line/screens/time_line_screen.dart';
import 'package:quiz_league/routing/route_info.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  static const routeInfo = RouteInfo(name: "splash", path: "/splash");

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 5)).then(
      (value) {
        if (context.mounted) {
          context.pushReplacementNamed(TimeLineScreen.routeInfo.name);
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Spacer(),
          Center(
            child: Text(
              "به بازی لیگ خوش آمدید",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          Spacer(),
          Text("این بازی توسط عدنان کمالی توسعه داده شده"),
          SizedBox(
            height: 50,
          )
        ],
      ),
    );
  }
}
