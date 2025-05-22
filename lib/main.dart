import 'package:flutter/material.dart';
import 'package:mindly/screens/home/home_page.dart';
import 'screens/auth/login_page.dart';
import 'screens/start/start_page.dart';
import 'screens/auth/register_page.dart';
import 'screens/achievements/achievements_page.dart';
import 'screens/leaderboard/leaderboard.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindly',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: StartPageWidget.routePath,
      routes: {
        StartPageWidget.routePath: (context) => const StartPageWidget(),
        LoginPageWidget.routePath: (context) => const LoginPageWidget(),
        AchievementsWidget.routePath: (context) => const AchievementsWidget(),
        RegisterWidget.routePath: (context) => const RegisterWidget(), // Add this
        HomePageWidget.routePath: (context) => const HomePageWidget(),
        LeaderBoardWidget.routePath: (context) => const LeaderBoardWidget(),

      },
    );
  }
}