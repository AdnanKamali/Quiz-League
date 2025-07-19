// import 'package:flutter/material.dart';

// // --- THEME MANAGEMENT (Unchanged) ---

// class AppColors {
//   // Light Theme Colors
//   static const Color lightScaffold = Color(0xFFF5F5F7);
//   static const Color lightPrimary = Color(0xFFFFFFFF);
//   static const Color lightSecondary = Color(0xFFE8E8E8);
//   static const Color lightText = Color(0xFF1D1D1F);
//   static const Color lightAccent = Colors.blue;

//   // Dark Theme Colors
//   static const Color darkScaffold = Color(0xFF121212);
//   static const Color darkPrimary = Color(0xFF1E1E1E);
//   static const Color darkSecondary = Color(0xFF2A2A2A);
//   static const Color darkText = Color(0xFFE1E1E1);
//   static const Color darkAccent = Colors.tealAccent;
// }

// class AppThemes {
//   static final ThemeData lightTheme = ThemeData(
//     brightness: Brightness.light,
//     scaffoldBackgroundColor: AppColors.lightScaffold,
//     primaryColor: AppColors.lightPrimary,
//     colorScheme: const ColorScheme.light(
//       primary: AppColors.lightPrimary,
//       secondary: AppColors.lightSecondary,
//       surface: AppColors.lightPrimary,
//       onSurface: AppColors.lightText,
//       background: AppColors.lightScaffold,
//       onBackground: AppColors.lightText,
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.lightPrimary,
//       elevation: 0.5,
//       iconTheme: IconThemeData(color: AppColors.lightText),
//       titleTextStyle: TextStyle(
//           color: AppColors.lightText,
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'Vazirmatn'),
//     ),
//     dividerColor: Colors.grey[300],
//     cardColor: AppColors.lightPrimary,
//     tabBarTheme: TabBarTheme(
//       labelColor: AppColors.lightAccent,
//       unselectedLabelColor: AppColors.lightText.withOpacity(0.7),
//       indicator: const UnderlineTabIndicator(
//         borderSide: BorderSide(color: AppColors.lightAccent, width: 2.0),
//       ),
//     ),
//   );

//   static final ThemeData darkTheme = ThemeData(
//     brightness: Brightness.dark,
//     scaffoldBackgroundColor: AppColors.darkScaffold,
//     primaryColor: AppColors.darkPrimary,
//     colorScheme: const ColorScheme.dark(
//       primary: AppColors.darkPrimary,
//       secondary: AppColors.darkSecondary,
//       surface: AppColors.darkPrimary,
//       onSurface: AppColors.darkText,
//       background: AppColors.darkScaffold,
//       onBackground: AppColors.darkText,
//     ),
//     appBarTheme: const AppBarTheme(
//       backgroundColor: AppColors.darkPrimary,
//       elevation: 0,
//       iconTheme: IconThemeData(color: AppColors.darkText),
//       titleTextStyle: TextStyle(
//           color: AppColors.darkText,
//           fontSize: 20,
//           fontWeight: FontWeight.bold,
//           fontFamily: 'Vazirmatn'),
//     ),
//     dividerColor: Colors.grey[800],
//     cardColor: AppColors.darkPrimary,
//     tabBarTheme: TabBarTheme(
//       labelColor: AppColors.darkAccent,
//       unselectedLabelColor: AppColors.darkText.withOpacity(0.7),
//       indicator: const UnderlineTabIndicator(
//         borderSide: BorderSide(color: AppColors.darkAccent, width: 2.0),
//       ),
//     ),
//   );
// }

// class ThemeNotifier with ChangeNotifier {
//   ThemeData _themeData;
//   ThemeNotifier(this._themeData);
//   ThemeData getTheme() => _themeData;
//   bool isDarkMode() => _themeData.brightness == Brightness.dark;

//   void toggleTheme() {
//     _themeData = isDarkMode() ? AppThemes.lightTheme : AppThemes.darkTheme;
//     notifyListeners();
//   }
// }

// // --- DATA MODELS ---

// class Player {
//   final String name;
//   final int number;
//   final String position;
//   Player({required this.name, required this.number, required this.position});
// }

// class Team {
//   final String name;
//   final String logoUrl;
//   final List<Player> players;
//   Team({required this.name, required this.logoUrl, this.players = const []});
// }

// class Match {
//   final String leagueName; // Added for context in match details
//   final Team homeTeam;
//   final Team awayTeam;
//   final int homeScore;
//   final int awayScore;
//   final String time;
//   final bool isLive;
//   final DateTime date;
//   Match(
//       {required this.leagueName,
//       required this.homeTeam,
//       required this.awayTeam,
//       required this.homeScore,
//       required this.awayScore,
//       required this.time,
//       this.isLive = false,
//       required this.date});
// }

// class TeamStanding {
//   final int position;
//   final Team team;
//   final int played;
//   final int wins;
//   final int draws;
//   final int losses;
//   final int goalDifference;
//   final int points;
//   TeamStanding(
//       {required this.position,
//       required this.team,
//       required this.played,
//       required this.wins,
//       required this.draws,
//       required this.losses,
//       required this.goalDifference,
//       required this.points});
// }

// class LeagueMatches {
//   final String leagueName;
//   final String leagueCountry;
//   final List<Match> matches;
//   final List<TeamStanding> standings;
//   LeagueMatches(
//       {required this.leagueName,
//       required this.leagueCountry,
//       required this.matches,
//       required this.standings});
// }

// // --- MOCK DATA ---
// final today =
//     DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);
// final yesterday = today.subtract(const Duration(days: 1));
// final tomorrow = today.add(const Duration(days: 1));

// final Team arsenal = Team(name: "آرسنال", logoUrl: "arsenal", players: [
//   Player(name: "بوکایو ساکا", number: 7, position: "مهاجم"),
//   Player(name: "مارتین اودگارد", number: 8, position: "هافبک")
// ]);
// final Team manCity = Team(
//     name: "منچستر سیتی",
//     logoUrl: "man_city",
//     players: [Player(name: "ارلینگ هالند", number: 9, position: "مهاجم")]);
// final Team liverpool = Team(
//     name: "لیورپول",
//     logoUrl: "liverpool",
//     players: [Player(name: "محمد صلاح", number: 11, position: "مهاجم")]);
// final Team manUtd = Team(name: "منچستر یونایتد", logoUrl: "man_u", players: []);
// final Team chelsea = Team(name: "چلسی", logoUrl: "chelsea", players: []);
// final Team realMadrid = Team(
//     name: "رئال مادرید",
//     logoUrl: "real_madrid",
//     players: [Player(name: "جود بلینگام", number: 5, position: "هافبک")]);
// final Team barcelona =
//     Team(name: "بارسلونا", logoUrl: "barcelona", players: []);
// final Team girona = Team(name: "ژیرونا", logoUrl: "girona", players: []);
// final Team atletico =
//     Team(name: "اتلتیکو مادرید", logoUrl: "atletico", players: []);
// final Team sevilla = Team(name: "سویا", logoUrl: "sevilla", players: []);

// final List<LeagueMatches> mockData = [
//   LeagueMatches(
//     leagueName: "لیگ برتر انگلیس",
//     leagueCountry: "انگلستان",
//     matches: [
//       Match(
//           leagueName: "لیگ برتر انگلیس",
//           homeTeam: manUtd,
//           awayTeam: liverpool,
//           homeScore: 2,
//           awayScore: 2,
//           time: "FT",
//           date: yesterday),
//       Match(
//           leagueName: "لیگ برتر انگلیس",
//           homeTeam: arsenal,
//           awayTeam: chelsea,
//           homeScore: 3,
//           awayScore: 1,
//           time: "'78",
//           isLive: true,
//           date: today),
//       Match(
//           leagueName: "لیگ برتر انگلیس",
//           homeTeam: manCity,
//           awayTeam: manUtd,
//           homeScore: 0,
//           awayScore: 0,
//           time: "23:30",
//           date: tomorrow),
//     ],
//     standings: [
//       TeamStanding(
//           position: 1,
//           team: arsenal,
//           played: 36,
//           wins: 26,
//           draws: 5,
//           losses: 5,
//           goalDifference: 60,
//           points: 83),
//       TeamStanding(
//           position: 2,
//           team: manCity,
//           played: 35,
//           wins: 25,
//           draws: 7,
//           losses: 3,
//           goalDifference: 54,
//           points: 82),
//       TeamStanding(
//           position: 3,
//           team: liverpool,
//           played: 36,
//           wins: 23,
//           draws: 9,
//           losses: 4,
//           goalDifference: 43,
//           points: 78),
//     ],
//   ),
//   LeagueMatches(
//     leagueName: "لالیگا",
//     leagueCountry: "اسپانیا",
//     matches: [
//       Match(
//           leagueName: "لالیگا",
//           homeTeam: realMadrid,
//           awayTeam: barcelona,
//           homeScore: 3,
//           awayScore: 2,
//           time: "FT",
//           date: yesterday),
//       Match(
//           leagueName: "لالیگا",
//           homeTeam: atletico,
//           awayTeam: sevilla,
//           homeScore: 0,
//           awayScore: 0,
//           time: "22:30",
//           date: today),
//     ],
//     standings: [
//       TeamStanding(
//           position: 1,
//           team: realMadrid,
//           played: 34,
//           wins: 27,
//           draws: 6,
//           losses: 1,
//           goalDifference: 52,
//           points: 87),
//       TeamStanding(
//           position: 2,
//           team: barcelona,
//           played: 34,
//           wins: 22,
//           draws: 7,
//           losses: 5,
//           goalDifference: 29,
//           points: 73),
//       TeamStanding(
//           position: 3,
//           team: girona,
//           played: 34,
//           wins: 22,
//           draws: 5,
//           losses: 7,
//           goalDifference: 31,
//           points: 71),
//     ],
//   ),
// ];

// // --- MAIN APP ---
// void main() => runApp(const MyAppWrapper());

// class MyAppWrapper extends StatefulWidget {
//   const MyAppWrapper({super.key});
//   @override
//   State<MyAppWrapper> createState() => _MyAppWrapperState();
// }

// class _MyAppWrapperState extends State<MyAppWrapper> {
//   late ThemeNotifier _themeNotifier;
//   @override
//   void initState() {
//     super.initState();
//     _themeNotifier = ThemeNotifier(AppThemes.darkTheme);
//     _themeNotifier.addListener(() => setState(() {}));
//   }

//   @override
//   Widget build(BuildContext context) => MyApp(themeNotifier: _themeNotifier);
// }

// class MyApp extends StatelessWidget {
//   final ThemeNotifier themeNotifier;
//   const MyApp({super.key, required this.themeNotifier});
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Live Scores',
//       theme: themeNotifier.getTheme(),
//       home: LiveScoresScreen(themeNotifier: themeNotifier),
//       debugShowCheckedModeBanner: false,
//       // localizationsDelegates: const [GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate],
//       // supportedLocales: const [Locale('fa', '')],
//     );
//   }
// }

// // --- SCREENS ---

// class LiveScoresScreen extends StatefulWidget {
//   final ThemeNotifier themeNotifier;
//   const LiveScoresScreen({super.key, required this.themeNotifier});

//   @override
//   State<LiveScoresScreen> createState() => _LiveScoresScreenState();
// }

// class _LiveScoresScreenState extends State<LiveScoresScreen>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   final List<Tab> _tabs = [];
//   final List<Widget> _tabViews = [];
//   final List<DateTime> _tabDates = [];
//   final int _daysToShow = 7;
//   final int _initialIndex = 3;

//   @override
//   void initState() {
//     super.initState();
//     _setupDates(DateTime.now());
//     _tabController = TabController(
//         length: _daysToShow, vsync: this, initialIndex: _initialIndex);
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   String _getPersianWeekday(int weekday) {
//     switch (weekday) {
//       case 1:
//         return "دوشنبه";
//       case 2:
//         return "سه‌شنبه";
//       case 3:
//         return "چهارشنبه";
//       case 4:
//         return "پنج‌شنبه";
//       case 5:
//         return "جمعه";
//       case 6:
//         return "شنبه";
//       case 7:
//         return "یکشنبه";
//       default:
//         return "";
//     }
//   }

//   void _setupDates(DateTime centerDate) {
//     _tabs.clear();
//     _tabViews.clear();
//     _tabDates.clear();

//     final today =
//         DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

//     for (int i = -_initialIndex; i < _daysToShow - _initialIndex; i++) {
//       final date = centerDate.add(Duration(days: i));
//       final dateOnly = DateTime(date.year, date.month, date.day);

//       String dayLabel;
//       if (dateOnly == today) {
//         dayLabel = "امروز";
//       } else if (dateOnly == today.subtract(const Duration(days: 1))) {
//         dayLabel = "دیروز";
//       } else if (dateOnly == today.add(const Duration(days: 1))) {
//         dayLabel = "فردا";
//       } else {
//         dayLabel =
//             "${_getPersianWeekday(date.weekday)}\n${date.day}/${date.month}";
//       }

//       _tabs.add(Tab(
//           child: Text(dayLabel,
//               textAlign: TextAlign.center,
//               style: const TextStyle(fontFamily: 'Vazirmatn'))));
//       _tabDates.add(dateOnly);
//       _tabViews.add(MatchesForDate(date: dateOnly));
//     }
//   }

//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? picked = await showDatePicker(
//       context: context,
//       initialDate: _tabDates[_tabController.index],
//       firstDate: DateTime(2020),
//       lastDate: DateTime(2030),
//     );
//     if (picked != null && picked != _tabDates[_tabController.index]) {
//       setState(() {
//         _setupDates(picked);
//         _tabController.dispose();
//         _tabController = TabController(
//             length: _daysToShow, vsync: this, initialIndex: _initialIndex);
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.calendar_today),
//           onPressed: () => _selectDate(context),
//         ),
//         title: const Text("نتایج زنده"),
//         centerTitle: true,
//         actions: [
//           IconButton(
//             icon: Icon(widget.themeNotifier.isDarkMode()
//                 ? Icons.wb_sunny
//                 : Icons.nights_stay),
//             onPressed: () => widget.themeNotifier.toggleTheme(),
//           ),
//         ],
//         bottom: TabBar(
//           controller: _tabController,
//           isScrollable: true,
//           tabs: _tabs,
//         ),
//       ),
//       body: TabBarView(
//         controller: _tabController,
//         children: _tabViews,
//       ),
//     );
//   }
// }

// class MatchesForDate extends StatelessWidget {
//   final DateTime date;
//   const MatchesForDate({super.key, required this.date});

//   @override
//   Widget build(BuildContext context) {
//     final List<LeagueMatches> filteredLeagues = [];
//     final checkDate = DateTime(date.year, date.month, date.day);

//     for (var league in mockData) {
//       final List<Match> filteredMatches = league.matches.where((match) {
//         return match.date.year == checkDate.year &&
//             match.date.month == checkDate.month &&
//             match.date.day == checkDate.day;
//       }).toList();

//       if (filteredMatches.isNotEmpty) {
//         filteredLeagues.add(LeagueMatches(
//           leagueName: league.leagueName,
//           leagueCountry: league.leagueCountry,
//           standings: league.standings,
//           matches: filteredMatches,
//         ));
//       }
//     }

//     if (filteredLeagues.isEmpty) {
//       return Center(
//         child: Text("هیچ مسابقه‌ای برای این روز ثبت نشده است.",
//             style: TextStyle(
//                 color:
//                     Theme.of(context).colorScheme.onSurface.withOpacity(0.6))),
//       );
//     }

//     return ListView.builder(
//       padding: const EdgeInsets.symmetric(vertical: 8),
//       itemCount: filteredLeagues.length,
//       itemBuilder: (context, index) {
//         return LeagueSection(league: filteredLeagues[index]);
//       },
//     );
//   }
// }

// class LeagueDetailsScreen extends StatelessWidget {
//   final LeagueMatches league;
//   const LeagueDetailsScreen({super.key, required this.league});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(league.leagueName), centerTitle: true),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             children: [
//               _buildHeaderRow(context),
//               const SizedBox(height: 4),
//               Card(
//                 elevation: 0,
//                 shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(12)),
//                 clipBehavior: Clip.antiAlias,
//                 child: Column(
//                   children: List.generate(league.standings.length, (index) {
//                     final standing = league.standings[index];
//                     return _buildStandingRow(context, standing, index);
//                   }),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildHeaderRow(BuildContext context) {
//     const style = TextStyle(fontWeight: FontWeight.bold, fontSize: 12);
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
//       child: Row(
//         children: [
//           const Expanded(
//               flex: 4,
//               child: Text("تیم", style: style, textAlign: TextAlign.right)),
//           const Expanded(
//               flex: 2,
//               child: Text("B", style: style, textAlign: TextAlign.center)),
//           const Expanded(
//               flex: 2,
//               child: Text(" برد", style: style, textAlign: TextAlign.center)),
//           const Expanded(
//               flex: 2,
//               child: Text(" م", style: style, textAlign: TextAlign.center)),
//           const Expanded(
//               flex: 2,
//               child: Text(" با", style: style, textAlign: TextAlign.center)),
//           const Expanded(
//               flex: 2,
//               child: Text(" +/-", style: style, textAlign: TextAlign.center)),
//           const Expanded(
//               flex: 2,
//               child: Text("امتیاز", style: style, textAlign: TextAlign.center)),
//         ],
//       ),
//     );
//   }

//   Widget _buildStandingRow(
//       BuildContext context, TeamStanding standing, int index) {
//     final textStyle =
//         TextStyle(fontSize: 13, color: Theme.of(context).colorScheme.onSurface);
//     return InkWell(
//       onTap: () => Navigator.push(
//           context,
//           MaterialPageRoute(
//               builder: (context) => TeamDetailsScreen(team: standing.team))),
//       child: Container(
//         color: index.isEven
//             ? Theme.of(context).colorScheme.surface
//             : Theme.of(context).colorScheme.secondary.withOpacity(0.3),
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
//         child: Row(
//           children: [
//             Expanded(
//               flex: 4,
//               child: Row(
//                 children: [
//                   Text("${standing.position}", style: textStyle),
//                   const SizedBox(width: 12),
//                   const Icon(Icons.shield, size: 20),
//                   const SizedBox(width: 8),
//                   Expanded(
//                       child: Text(standing.team.name,
//                           style: textStyle, overflow: TextOverflow.ellipsis)),
//                 ],
//               ),
//             ),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.played}",
//                     style: textStyle, textAlign: TextAlign.center)),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.wins}",
//                     style: textStyle, textAlign: TextAlign.center)),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.draws}",
//                     style: textStyle, textAlign: TextAlign.center)),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.losses}",
//                     style: textStyle, textAlign: TextAlign.center)),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.goalDifference}",
//                     style: textStyle, textAlign: TextAlign.center)),
//             Expanded(
//                 flex: 2,
//                 child: Text("${standing.points}",
//                     style: textStyle.copyWith(fontWeight: FontWeight.bold),
//                     textAlign: TextAlign.center)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TeamDetailsScreen extends StatelessWidget {
//   final Team team;
//   const TeamDetailsScreen({super.key, required this.team});
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(team.name)),
//       body: ListView(
//         children: [
//           Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(children: [
//                 const Icon(Icons.shield, size: 80),
//                 const SizedBox(height: 16),
//                 Text(team.name,
//                     style: Theme.of(context).textTheme.headlineSmall)
//               ])),
//           const Divider(),
//           Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Text("بازیکنان",
//                   style: Theme.of(context).textTheme.titleLarge)),
//           if (team.players.isEmpty)
//             const Center(
//                 child: Padding(
//                     padding: EdgeInsets.all(20.0),
//                     child: Text("لیست بازیکنان در دسترس نیست")))
//           else
//             ...team.players.map((player) => ListTile(
//                 leading: CircleAvatar(
//                     backgroundColor: Theme.of(context).colorScheme.secondary,
//                     child: Text(player.number.toString())),
//                 title: Text(player.name),
//                 subtitle: Text(player.position)))
//         ],
//       ),
//     );
//   }
// }

// // NEW: Match Details Screen
// class MatchDetailsScreen extends StatelessWidget {
//   final Match match;

//   const MatchDetailsScreen({super.key, required this.match});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 3,
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(match.leagueName),
//           bottom: const TabBar(
//             tabs: [
//               Tab(text: "اطلاعات"),
//               Tab(text: "ترکیب"),
//               Tab(text: "آمار"),
//             ],
//           ),
//         ),
//         body: Column(
//           children: [
//             _buildMatchHeader(context),
//             Expanded(
//               child: TabBarView(
//                 children: [
//                   // Info Tab
//                   _buildInfoTab(context),
//                   // Lineup Tab
//                   const Center(
//                       child: Text("ترکیب تیم‌ها به زودی نمایش داده می‌شود.")),
//                   // Stats Tab
//                   const Center(
//                       child: Text("آمار بازی به زودی نمایش داده می‌شود.")),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildMatchHeader(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16.0),
//       color: Theme.of(context).cardColor,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [
//           Expanded(
//               child: TeamDisplay(
//                   team: match.homeTeam,
//                   alignment: CrossAxisAlignment.center,
//                   iconSize: 50)),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 16.0),
//             child: MatchStatus(
//               time: match.time,
//               isLive: match.isLive,
//               homeScore: match.homeScore,
//               awayScore: match.awayScore,
//               scoreFontSize: 36,
//             ),
//           ),
//           Expanded(
//               child: TeamDisplay(
//                   team: match.awayTeam,
//                   alignment: CrossAxisAlignment.center,
//                   iconSize: 50)),
//         ],
//       ),
//     );
//   }

//   Widget _buildInfoTab(BuildContext context) {
//     return ListView(
//       padding: const EdgeInsets.all(16.0),
//       children: [
//         Card(
//           child: ListTile(
//             leading: const Icon(Icons.calendar_today),
//             title: Text(
//                 "${match.date.year}/${match.date.month}/${match.date.day}"),
//             subtitle: const Text("تاریخ"),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             leading: const Icon(Icons.schedule),
//             title: Text(match.time),
//             subtitle: const Text("وضعیت"),
//           ),
//         ),
//         Card(
//           child: ListTile(
//             leading: const Icon(Icons.emoji_events),
//             title: Text(match.leagueName),
//             subtitle: const Text("رقابت"),
//           ),
//         ),
//       ],
//     );
//   }
// }

// // --- WIDGETS ---

// class LeagueSection extends StatelessWidget {
//   final LeagueMatches league;
//   const LeagueSection({super.key, required this.league});
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//       elevation: 1,
//       shadowColor: Colors.black.withOpacity(0.2),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//       clipBehavior: Clip.antiAlias,
//       child: Column(
//         children: [
//           InkWell(
//             onTap: () => Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                     builder: (context) => LeagueDetailsScreen(league: league))),
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Row(
//                 children: [
//                   const Icon(Icons.flag, size: 20),
//                   const SizedBox(width: 12),
//                   Text("${league.leagueCountry} - ${league.leagueName}",
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16,
//                           color: Theme.of(context).colorScheme.onSurface)),
//                   const Spacer(),
//                   const Icon(Icons.arrow_forward_ios, size: 16),
//                 ],
//               ),
//             ),
//           ),
//           ListView.separated(
//             itemCount: league.matches.length,
//             shrinkWrap: true,
//             physics: const NeverScrollableScrollPhysics(),
//             itemBuilder: (context, index) =>
//                 MatchTile(match: league.matches[index]),
//             separatorBuilder: (context, index) =>
//                 Divider(height: 1, indent: 16, endIndent: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class MatchTile extends StatelessWidget {
//   final Match match;
//   const MatchTile({super.key, required this.match});
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () {
//         Navigator.push(
//           context,
//           MaterialPageRoute(
//             builder: (context) => MatchDetailsScreen(match: match),
//           ),
//         );
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
//         child: Row(
//           children: [
//             Expanded(
//                 child: TeamDisplay(
//                     team: match.homeTeam, alignment: CrossAxisAlignment.start)),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: MatchStatus(
//                   time: match.time,
//                   isLive: match.isLive,
//                   homeScore: match.homeScore,
//                   awayScore: match.awayScore),
//             ),
//             Expanded(
//                 child: TeamDisplay(
//                     team: match.awayTeam, alignment: CrossAxisAlignment.end)),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class TeamDisplay extends StatelessWidget {
//   final Team team;
//   final CrossAxisAlignment alignment;
//   final double iconSize;

//   const TeamDisplay({
//     super.key,
//     required this.team,
//     this.alignment = CrossAxisAlignment.start,
//     this.iconSize = 36,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: alignment,
//       children: [
//         Icon(Icons.shield, size: iconSize),
//         const SizedBox(height: 8),
//         Text(team.name,
//             textAlign: alignment == CrossAxisAlignment.start
//                 ? TextAlign.start
//                 : TextAlign.end,
//             style: TextStyle(
//                 fontSize: 14, color: Theme.of(context).colorScheme.onSurface),
//             overflow: TextOverflow.ellipsis),
//       ],
//     );
//   }
// }

// class MatchStatus extends StatelessWidget {
//   final String time;
//   final bool isLive;
//   final int homeScore;
//   final int awayScore;
//   final double scoreFontSize;

//   const MatchStatus({
//     super.key,
//     required this.time,
//     required this.isLive,
//     required this.homeScore,
//     required this.awayScore,
//     this.scoreFontSize = 24,
//   });

//   @override
//   Widget build(BuildContext context) {
//     final Color timeColor = isLive
//         ? AppColors.darkAccent
//         : Theme.of(context).textTheme.bodySmall?.color ?? Colors.grey;
//     final FontWeight timeFontWeight =
//         isLive ? FontWeight.bold : FontWeight.normal;
//     return Column(
//       children: [
//         Text("$homeScore - $awayScore",
//             textDirection: TextDirection.ltr,
//             style: TextStyle(
//                 fontSize: scoreFontSize,
//                 fontWeight: FontWeight.bold,
//                 color: Theme.of(context).colorScheme.onSurface)),
//         const SizedBox(height: 8),
//         if (time.isNotEmpty)
//           Container(
//             padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
//             decoration: BoxDecoration(
//                 color:
//                     isLive ? timeColor.withOpacity(0.15) : Colors.transparent,
//                 borderRadius: BorderRadius.circular(4)),
//             child: Text(time,
//                 style: TextStyle(color: timeColor, fontWeight: timeFontWeight)),
//           ),
//       ],
//     );
//   }
// }

//////////////////

import 'package:flutter/material.dart';
import 'dart:async';

// --- THEME MANAGEMENT ---

class AppColors {
  // Light Theme Colors
  static const Color lightScaffold = Color(0xFFF5F5F7);
  static const Color lightPrimary = Color(0xFFFFFFFF);
  static const Color lightText = Color(0xFF1D1D1F);
  static const Color correctColor = Colors.green;
  static const Color incorrectColor = Colors.red;

  // Dark Theme Colors
  static const Color darkScaffold = Color(0xFF121212);
  static const Color darkPrimary = Color(0xFF1E1E1E);
  static const Color darkText = Color(0xFFE1E1E1);
}

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.lightScaffold,
    primaryColor: AppColors.lightPrimary,
    colorScheme: const ColorScheme.light(
      surface: AppColors.lightPrimary,
      onSurface: AppColors.lightText,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.lightPrimary,
      elevation: 0.5,
      iconTheme: IconThemeData(color: AppColors.lightText),
      titleTextStyle: TextStyle(
          color: AppColors.lightText,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Vazirmatn'),
    ),
    cardColor: AppColors.lightPrimary,
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: AppColors.darkScaffold,
    primaryColor: AppColors.darkPrimary,
    colorScheme: const ColorScheme.dark(
      surface: AppColors.darkPrimary,
      onSurface: AppColors.darkText,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.darkPrimary,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.darkText),
      titleTextStyle: TextStyle(
          color: AppColors.darkText,
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Vazirmatn'),
    ),
    cardColor: AppColors.darkPrimary,
  );
}

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;
  ThemeNotifier(this._themeData);
  ThemeData getTheme() => _themeData;
  bool isDarkMode() => _themeData.brightness == Brightness.dark;

  void toggleTheme() {
    _themeData = isDarkMode() ? AppThemes.lightTheme : AppThemes.darkTheme;
    notifyListeners();
  }
}

// --- DATA MODELS ---

class Answer {
  final String text;
  final bool isCorrect;
  Answer(this.text, this.isCorrect);
}

class Question {
  final String questionText;
  final List<Answer> answers;
  Question(this.questionText, this.answers);
}

class QuizCategory {
  final String name;
  final String imageUrl;
  final List<Question> questions;
  QuizCategory(
      {required this.name, required this.imageUrl, required this.questions});
}

// --- MOCK DATA ---
final List<QuizCategory> categories = [
  QuizCategory(
      name: "ورزش",
      imageUrl: "https://placehold.co/600x400/3498db/ffffff?text=ورزش",
      questions: [
        Question("کدام تیم بیشترین قهرمانی در لیگ قهرمانان اروپا را دارد؟", [
          Answer("بارسلونا", false),
          Answer("رئال مادرید", true),
          Answer("بایرن مونیخ", false),
          Answer("لیورپول", false)
        ]),
        Question("المپیک هر چند سال یکبار برگزار می‌شود؟", [
          Answer("۲ سال", false),
          Answer("۳ سال", false),
          Answer("۴ سال", true),
          Answer("۵ سال", false)
        ]),
      ]),
  QuizCategory(
      name: "تاریخ",
      imageUrl: "https://placehold.co/600x400/e74c3c/ffffff?text=تاریخ",
      questions: [
        Question("جنگ جهانی دوم در چه سالی به پایان رسید؟", [
          Answer("۱۹۴۵", true),
          Answer("۱۹۱۸", false),
          Answer("۱۹۳۹", false),
          Answer("۱۹۵۰", false)
        ]),
      ]),
  QuizCategory(
      name: "علم و دانش",
      imageUrl: "https://placehold.co/600x400/2ecc71/ffffff?text=علم",
      questions: [
        Question("کدام سیاره به سیاره سرخ معروف است؟", [
          Answer("زهره", false),
          Answer("مریخ", true),
          Answer("مشتری", false),
          Answer("زحل", false)
        ]),
        Question("فرمول شیمیایی آب چیست؟", [
          Answer("CO2", false),
          Answer("O2", false),
          Answer("H2O", true),
          Answer("NaCl", false)
        ]),
      ]),
  QuizCategory(
      name: "هنر و سینما",
      imageUrl: "https://placehold.co/600x400/9b59b6/ffffff?text=هنر",
      questions: []),
  QuizCategory(
      name: "اطلاعات عمومی",
      imageUrl: "https://placehold.co/600x400/f1c40f/ffffff?text=عمومی",
      questions: []),
  QuizCategory(
      name: "جغرافیا",
      imageUrl: "https://placehold.co/600x400/1abc9c/ffffff?text=جغرافیا",
      questions: []),
];

// --- MAIN APP ---
void main() => runApp(const MyAppWrapper());

class MyAppWrapper extends StatefulWidget {
  const MyAppWrapper({super.key});
  @override
  State<MyAppWrapper> createState() => _MyAppWrapperState();
}

class _MyAppWrapperState extends State<MyAppWrapper> {
  late ThemeNotifier _themeNotifier;
  @override
  void initState() {
    super.initState();
    _themeNotifier = ThemeNotifier(AppThemes.darkTheme);
    _themeNotifier.addListener(() => setState(() {}));
  }

  @override
  Widget build(BuildContext context) => MyApp(themeNotifier: _themeNotifier);
}

class MyApp extends StatelessWidget {
  final ThemeNotifier themeNotifier;
  const MyApp({super.key, required this.themeNotifier});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'مسابقه',
      theme: themeNotifier.getTheme(),
      home: CategoryScreen(themeNotifier: themeNotifier),
      debugShowCheckedModeBanner: false,
      // localizationsDelegates: const [
      //   GlobalMaterialLocalizations.delegate,
      //   GlobalWidgetsLocalizations.delegate,
      //   GlobalCupertinoLocalizations.delegate,
      // ],
      // supportedLocales: const [Locale('fa', '')],
    );
  }
}

// --- SCREENS ---

class CategoryScreen extends StatelessWidget {
  final ThemeNotifier themeNotifier;
  const CategoryScreen({super.key, required this.themeNotifier});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("انتخاب دسته‌بندی"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(themeNotifier.isDarkMode()
                ? Icons.wb_sunny
                : Icons.nights_stay),
            onPressed: () => themeNotifier.toggleTheme(),
          ),
        ],
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.9,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return CategoryCard(category: category);
        },
      ),
    );
  }
}

class QuizScreen extends StatefulWidget {
  final QuizCategory category;
  const QuizScreen({super.key, required this.category});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _answered = false;
  Timer? _timer;
  int _timeRemaining = 120; // 2 minutes in seconds

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_timeRemaining > 0) {
          _timeRemaining--;
        } else {
          _timer?.cancel();
          _showResults();
        }
      });
    });
  }

  void _handleAnswer(bool isCorrect) {
    if (_answered) return;

    setState(() {
      _answered = true;
      if (isCorrect) {
        _score++;
      }
    });

    Future.delayed(const Duration(seconds: 1), () {
      if (_currentQuestionIndex < widget.category.questions.length - 1) {
        setState(() {
          _currentQuestionIndex++;
          _answered = false;
        });
      } else {
        _timer?.cancel();
        _showResults();
      }
    });
  }

  void _showResults() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultsScreen(
          score: _score,
          totalQuestions: widget.category.questions.length,
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.category.questions.isEmpty) {
      return Scaffold(
        appBar: AppBar(title: Text(widget.category.name)),
        body: const Center(child: Text("سوالی برای این دسته‌بندی وجود ندارد.")),
      );
    }

    final currentQuestion = widget.category.questions[_currentQuestionIndex];
    final minutes = (_timeRemaining / 60).floor().toString().padLeft(2, '0');
    final seconds = (_timeRemaining % 60).toString().padLeft(2, '0');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.category.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            LinearProgressIndicator(
              value: (_currentQuestionIndex + 1) /
                  widget.category.questions.length,
              minHeight: 10,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    "سوال ${_currentQuestionIndex + 1} از ${widget.category.questions.length}",
                    style: Theme.of(context).textTheme.titleMedium),
                Text("$minutes:$seconds",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(color: AppColors.correctColor)),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Center(
                child: Text(
                  currentQuestion.questionText,
                  style: Theme.of(context).textTheme.headlineSmall,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            ...currentQuestion.answers.map((answer) {
              return _AnswerButton(
                answer: answer,
                isAnswered: _answered,
                onTap: () => _handleAnswer(answer.isCorrect),
              );
            }),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class ResultsScreen extends StatelessWidget {
  final int score;
  final int totalQuestions;

  const ResultsScreen(
      {super.key, required this.score, required this.totalQuestions});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("نتیجه مسابقه"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "پایان آزمون!",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 20),
            Text(
              "امتیاز شما: $score از $totalQuestions",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 40),
            ElevatedButton.icon(
              icon: const Icon(Icons.home),
              label: const Text("بازگشت به صفحه اصلی"),
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                textStyle:
                    const TextStyle(fontSize: 18, fontFamily: 'Vazirmatn'),
              ),
              onPressed: () {
                Navigator.of(context).popUntil((route) => route.isFirst);
              },
            ),
          ],
        ),
      ),
    );
  }
}

// --- WIDGETS ---

class CategoryCard extends StatelessWidget {
  final QuizCategory category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizScreen(category: category),
            ),
          );
        },
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned.fill(
              child: Image.network(
                category.imageUrl,
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
                    Colors.black.withOpacity(0.8),
                    Colors.black.withOpacity(0.0)
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
  }
}

class _AnswerButton extends StatelessWidget {
  final Answer answer;
  final bool isAnswered;
  final VoidCallback onTap;

  const _AnswerButton(
      {required this.answer, required this.isAnswered, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color? buttonColor;
    Color? borderColor;

    if (isAnswered) {
      if (answer.isCorrect) {
        buttonColor = AppColors.correctColor;
      } else {
        buttonColor = AppColors.incorrectColor;
      }
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          foregroundColor: Colors.white,
          padding: const EdgeInsets.all(16.0),
          textStyle: const TextStyle(fontSize: 18, fontFamily: 'Vazirmatn'),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
            side:
                BorderSide(color: borderColor ?? Colors.transparent, width: 2),
          ),
        ),
        onPressed: isAnswered ? null : onTap,
        child: Text(answer.text),
      ),
    );
  }
}
