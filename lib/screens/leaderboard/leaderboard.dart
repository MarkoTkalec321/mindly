import 'package:flutter/material.dart';
import 'leaderboard_row.dart';

class LeaderBoardWidget extends StatelessWidget {
  const LeaderBoardWidget({super.key});

  static String routeName = 'LeaderBoard';
  static String routePath = '/leaderBoard';

  @override
  Widget build(BuildContext context) {
    final leaderboard = [
      {'rank': '#1', 'name': 'Patrick', 'score': '156'},
      {'rank': '#2', 'name': 'Aloka', 'score': '131'},
      {'rank': '#3', 'name': 'Tom', 'score': '129'},
      {'rank': '#4', 'name': 'Gaetan', 'score': '119'},
      {'rank': '#5', 'name': 'Julia', 'score': '105'},
      {'rank': '#6', 'name': 'Marko', 'score': '98'},
      {'rank': '#7', 'name': 'Marcel', 'score': '90'},
    ];

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
          shape: BoxShape.rectangle,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40.0, bottom: 20.0), // Dodanie dolnego paddingu
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Leaderboard',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            ...leaderboard
                .map((entry) => Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: LeaderboardRow(
                        rank: entry['rank']!,
                        name: entry['name']!,
                        score: entry['score']!,
                      ),
                    ))
                .toList(),
          ],
        ),
      ),
    );
  }
}
