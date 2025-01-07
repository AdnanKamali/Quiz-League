import 'package:flutter/material.dart';
import 'package:quiz_league/2_presntation/Leagues/screens/leagues_screen.dart';
import 'package:quiz_league/2_presntation/Settings/screen/settings_screen.dart';
import 'package:quiz_league/2_presntation/TimeLine/screens/match_time_line_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPage = 0;
  void _onChangeScreen(int pageIndex) {
    _currentPage = pageIndex;
    setState(() {});
  }

  final pages = [
    LeaguesScreen(),
    MatchTimeLineScreen(),
    SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.orange,
        currentIndex: _currentPage,
        onTap: (value) => _onChangeScreen(value),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.ballot),
            label: "لیگ ها",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_alarm),
            label: "زمان برگزاری مسابقات",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.settings),
          //   label: "تنظیمات",
          // ),
        ],
      ),
    );
  }
}
