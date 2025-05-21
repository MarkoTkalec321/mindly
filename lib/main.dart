import 'package:flutter/material.dart';
import 'screens/home/home_page.dart';
import 'screens/auth/login_page.dart';
import 'screens/auth/register_page.dart';
import 'screens/achievements/achievements_page.dart';

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
      initialRoute: HomePageWidget.routePath,
      routes: {
        HomePageWidget.routePath: (context) => const HomePageWidget(),
        LoginPageWidget.routePath: (context) => const LoginPageWidget(),
        RegisterWidget.routePath: (context) => const RegisterWidget(),
        AchievementsWidget.routePath: (context) => const AchievementsWidget(),
      },
    );
  }
}