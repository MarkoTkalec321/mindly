import 'package:flutter/material.dart';
import 'question_5.dart'; // Importujemy ekran 5, do którego będziemy nawigować
import 'package:mindly/screens/home_page/home_page.dart';
import 'package:mindly/screens/leaderboard/leaderboard.dart';
import 'package:mindly/screens/streak/streak_page.dart';
import 'package:mindly/screens/profile/profile_page.dart';

class Question4Screen extends StatefulWidget {
  static String routeName = 'question4';
  static String routePath = '/question4';

  const Question4Screen({super.key});

  @override
  _Question4ScreenState createState() => _Question4ScreenState();
}

class _Question4ScreenState extends State<Question4Screen> {
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

  @override
  Widget build(BuildContext context) {
    void _onAnswerTap(String answer) {
      print('Selected answer: $answer');
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0), // Dodanie paddingu
            child: Text(
              answer,
              textAlign: TextAlign.center, // Wyśrodkowanie tekstu
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      );
    }

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
                  'Who was the British Prime Minister during most of World War II?',
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
                  buildAnswerButton('Neville Chamberlain', const Color(0xFFFF8A30)),
                  const SizedBox(width: 30),
                  buildAnswerButton('Winston Churchill', const Color(0xFF0AA736)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildAnswerButton('Margaret Thatcher', const Color(0xFFAE78FF)),
                  const SizedBox(width: 30),
                  buildAnswerButton('Tony Blair', const Color(0xFF01B8CF)),
                ],
              ),
              const SizedBox(height: 40),
              const Text(
                '4/5',
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
                    MaterialPageRoute(builder: (context) => const Question5Screen()), // Przejście do Question5Screen
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
}
