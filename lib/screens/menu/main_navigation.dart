  import 'package:flutter/material.dart';
  import 'package:mindly/screens/home_page/home_page.dart';
import 'package:mindly/screens/leaderboard/leaderboard.dart';

  class MainNavigation extends StatefulWidget {
    const MainNavigation({super.key});

     @override
     State<MainNavigation> createState() => _MainNavigationState();
  }

  class _MainNavigationState extends State<MainNavigation> {
    int _selectedIndex = 0;

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

  final List<Widget> _screens = [
    const HomePageWidget(),
    const LeaderBoardWidget(),
    Center(child: Text('Streak', style: TextStyle(fontSize: 24))),
    Center(child: Text('Settings', style: TextStyle(fontSize: 24))),
  ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey[400],
          backgroundColor: Colors.blue[900],
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.emoji_events),
              label: 'Leaderboard',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.whatshot),
              label: 'Streak',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
        ),
      );
    }
  }
    