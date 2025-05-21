import 'package:flutter/material.dart';
import 'screens/auth/login_page.dart';

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
      home: const LoginPageWidget(),
    );
  }
}