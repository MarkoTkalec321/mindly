import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  static String routeName = 'HomePage';
  static String routePath = '/homePage';

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

@override
Widget build(BuildContext context) {
  return GestureDetector(
    onTap: () {
      FocusScope.of(context).unfocus();
    },
    child: Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 40),
              const Text(
                'No pressure… just your brain on the line',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  print('Play pressed ...');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF84E6D1),
                  minimumSize: const Size(250, 48),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
                child: const Text(
                  'Play!',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF222222),
                  ),
                ),
              ),
              const SizedBox(height: 60),
              _buildProgressItem(
                icon: FontAwesomeIcons.book,
                label: 'History',
                progress: '10/15',
                color: const Color(0xFFFF1927),
              ),
              const SizedBox(height: 15),
              _buildProgressItem(
                icon: Icons.sports_basketball,
                label: 'Sports',
                progress: '3/10',
                color: const Color(0xFFFFCB32),
              ),
              const SizedBox(height: 15),
              _buildProgressItem(
                icon: Icons.music_note_sharp,
                label: 'Music',
                progress: '7/20',
                color: const Color(0xFF1931FF),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}


Widget _buildProgressItem({
  required IconData icon,
  required String label,
  required String progress,
  required Color color,
  VoidCallback? onTap,
}) {
  return InkWell(
    onTap: onTap ?? () => print('$label clicked'),
    borderRadius: BorderRadius.circular(18),
    child: Container(
      width: 324.8,
      height: 48.9,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 24),
          const SizedBox(width: 50),
          SizedBox(
            width: 100,
            child: Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 45),
          SizedBox(
            width: 82.2,
            child: Text(
              progress,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

}
