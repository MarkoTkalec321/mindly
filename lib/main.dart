import 'package:flutter/material.dart';
import 'package:window_manager/window_manager.dart';
import 'dart:io';
import 'screens/home/home_page.dart';
import 'screens/auth/login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    await windowManager.ensureInitialized();
    
    await windowManager.setTitle('Mindly');
    await windowManager.setMinimumSize(const Size(390, 844));
    await windowManager.setMaximumSize(const Size(390, 844));
    await windowManager.setSize(const Size(390, 844));
  }
  
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
      },
    );
  }
}