import 'package:flutter/material.dart';
import 'screens/auth/login_page.dart';
import 'screens/start/start_page.dart';
import 'screens/auth/register_page.dart';

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
        RegisterWidget.routePath: (context) => const RegisterWidget(), // Add this
      },
    );
  }
}