import 'package:flutter/material.dart';
import 'package:mindly/screens/home_page/home_page.dart';
import 'package:mindly/screens/leaderboard/leaderboard.dart';
import 'package:mindly/screens/streak/streak_page.dart';
import 'package:mindly/screens/profile/profile_page.dart'; 
import 'question_4.dart'; // Importujemy ekran 4, do którego będziemy nawigować

class Question3Page extends StatefulWidget {
  const Question3Page({super.key});

  static const routeName = '/question3';

  @override
  _Question3PageState createState() => _Question3PageState();
}

class _Question3PageState extends State<Question3Page> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const HomePageWidget(),
    const LeaderBoardWidget(),
    const StreakScreenWidget(),
    const ProfileWidget(),
  ];

  void _onAnswerTap(String answer) {
    print('Selected answer: $answer');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              const SizedBox(height: 50),
              // Kontener z pytaniem
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                color: Colors.white.withOpacity(0.8),
                child: const Text(
                  'The Great Wall of China was primarily built to protect against invasions from which group?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 40),
              // Rząd z przyciskami odpowiedzi
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnswerButton('Romans', const Color(0xFFFF8A30)),
                  const SizedBox(width: 30),
                  buildAnswerButton('Mongols', const Color(0xFF0AA736)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnswerButton('Persians', const Color(0xFFAE78FF)),
                  const SizedBox(width: 30),
                  buildAnswerButton('Japanese', const Color(0xFF01B8CF)),
                ],
              ),
              const Spacer(),
              // Postęp: 3/5
              const Text(
                '3/5',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),
              // Przycisk Skip
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  Question4Screen()), // Przejście do Question4Screen
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF9139EF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                ),
                child: const Text(
                  'Skip question',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
      // Dodanie dolnego menu nawigacyjnego
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
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  // Funkcja do tworzenia przycisków odpowiedzi
  Widget buildAnswerButton(String answer, Color color) {
    return GestureDetector(
      onTap: () => _onAnswerTap(answer),
      child: Container(
        width: 150,
        height: 90,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: Text(
          answer,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w800,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
