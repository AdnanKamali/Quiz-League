import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_league/UI/0_common/controllers/match_controller/match_controller_cubit.dart';
import 'package:quiz_league/UI/time_line/widgets/match_view/match_view.dart';
import 'package:quiz_league/routing/route_info.dart';

import 'package:shamsi_date/shamsi_date.dart';

class TimeLineScreen extends StatefulWidget {
  static const routeInfo = RouteInfo(
    name: "time line screen",
    path: "/time-line",
  );

  // final ThemeNotifier themeNotifier;
  const TimeLineScreen({super.key});

  @override
  State<TimeLineScreen> createState() => _TimeLineScreenState();
}

class _TimeLineScreenState extends State<TimeLineScreen>
    with TickerProviderStateMixin {
  late MatchControllerCubit _matchControllerCubit;

  late TabController _tabController;
  final List<Tab> _tabs = [];
  final List<Widget> _tabViews = [];
  final List<Jalali> _tabDates = [];
  final int _daysToShow = 7;
  final int _initialIndex = 3;

  @override
  void initState() {
    super.initState();
    _matchControllerCubit = context.read();
    _matchControllerCubit.fetchMatches(DateTime.now());

    _setupDates(Jalali.now());
    _tabController = TabController(
        length: _daysToShow, vsync: this, initialIndex: _initialIndex);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void _setupDates(Jalali centerDate) {
    _tabs.clear();
    _tabViews.clear();
    _tabDates.clear();

    final today =
        Jalali(Jalali.now().year, Jalali.now().month, Jalali.now().day);

    for (int i = -_initialIndex; i < _daysToShow - _initialIndex; i++) {
      final date = centerDate.addDays(i);
      final dateOnly = Jalali(date.year, date.month, date.day);

      String dayLabel;
      if (dateOnly == today) {
        dayLabel = "امروز";
      } else if (dateOnly == today - 1) {
        dayLabel = "دیروز";
      } else if (dateOnly == today + 1) {
        dayLabel = "فردا";
      } else {
        dayLabel = "${date.formatter.wN} - ${date.day}/${date.month}";
      }

      _tabs.add(Tab(
        text: dayLabel,
      ));

      _tabDates.add(dateOnly);
      _tabViews.add(MatchesForDate(date: dateOnly.toDateTime()));
    }
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: _tabDates[_tabController.index].toDateTime(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
    );

    if (_picked != null &&
        Jalali.fromDateTime(_picked) != _tabDates[_tabController.index]) {
      final picked = Jalali.fromDateTime(_picked);
      _changeTab(picked);
    }
  }

  void _changeTab(Jalali picked) {
    setState(() {
      _setupDates(picked);
      _tabController.dispose();
      _tabController = TabController(
          length: _daysToShow, vsync: this, initialIndex: _initialIndex);
    });
    _matchControllerCubit.fetchMatches(picked.toDateTime());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () => _selectDate(context),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              tooltip: "خروج از برنامه",
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("خروج از برنامه"),
                      content: const Text("آیا می‌خواهید از برنامه خارج شوید؟"),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("خیر"),
                        ),
                        TextButton(
                          onPressed: () {
                            exit(0);
                          },
                          child: const Text("بله"),
                        ),
                      ],
                    );
                  },
                );
              },
              icon: const Icon(Icons.power_settings_new, color: Colors.red),
            ),
          ),
        ],
        title: const Text("نتایج زنده"),
        centerTitle: true,
        bottom: TabBar(
          indicatorWeight: 10,
          onTap: (value) {
            _matchControllerCubit.fetchMatches(_tabDates[value].toDateTime());
          },
          controller: _tabController,
          isScrollable: false,
          tabs: _tabs,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _tabViews,
      ),
    );
  }
}

class MatchesForDate extends StatelessWidget {
  final DateTime date;
  const MatchesForDate({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    final matchController = context.watch<MatchControllerCubit>();
    final matches = matchController.state.matches;

    if (matchController.state.isLoading) {
      return Center(child: CircularProgressIndicator());
    }

    if (matchController.state.errorResponse != null) {
      return Center(
        child: TextButton(
          onPressed: () {
            matchController.fetchMatches(date);
          },
          child: Text("تلاش مجدد"),
        ),
      );
    }

    if (matches == null || matches.isEmpty) {
      return Center(
        child: Text(
          "هیچ مسابقه‌ای برای این روز ثبت نشده است.",
          style: TextStyle(
            color:
                Theme.of(context).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: matches.length,
      itemBuilder: (context, index) {
        return LeagueSection(matchViewModel: matches[index]);
      },
    );
  }
}
