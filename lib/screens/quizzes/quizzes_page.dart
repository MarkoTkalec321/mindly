import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './models/quizzes_page_model.dart';
export './models/quizzes_page_model.dart';

import 'package:mindly/screens/quiz/questions/question_1.dart';
import 'package:mindly/screens/home_page/home_page.dart';
import 'package:mindly/screens/leaderboard/leaderboard.dart';
import 'package:mindly/screens/streak/streak_page.dart';
import 'package:mindly/screens/profile/profile_page.dart';

class QuizzesPageWidget extends StatefulWidget {
  const QuizzesPageWidget({super.key});

  static String routeName = 'QuizzesPage';
  static String routePath = '/QuizzesPage';

  @override
  State<QuizzesPageWidget> createState() => _QuizzesPageWidgetState();
}

class _QuizzesPageWidgetState extends State<QuizzesPageWidget> {
  int _selectedIndex = 0;
  late QuizzesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Widget> _screens = [
    const HomePageWidget(),
    const LeaderBoardWidget(),
    const StreakScreenWidget(),
    const ProfileWidget(),
  ];

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuizzesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => _screens[index]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset('assets/images/background.png').image,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                const SizedBox(height: 50),
                _buildQuizButton(
                  icon: Icons.history,
                  label: 'History',
                  color: const Color(0xFFD00909),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Question1Screen()),
                    );
                  },
                ),
                _buildQuizButton(
                  icon: Icons.biotech_outlined,
                  label: 'Science',
                  color: const Color(0xE307DB3F),
                ),
                _buildQuizButton(
                  icon: Icons.sports_basketball,
                  label: 'Sports',
                  color: const Color(0xFDFFC210),
                ),
                _buildQuizButton(
                  icon: Icons.app_settings_alt_outlined,
                  label: 'Technology',
                  color: const Color(0xFF9A1DF7),
                ),
                _buildQuizButton(
                  icon: Icons.tv_sharp,
                  label: 'Movies & TV',
                  color: const Color(0xFF1C7EEF),
                ),
                const SizedBox(height: 20),
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
      ),
    );
  }

  Widget _buildQuizButton({
    required IconData icon,
    required String label,
    required Color color,
    VoidCallback? onTap,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 40),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: 316,
          height: 68,
          decoration: BoxDecoration(
            color: color,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4,
                color: Color(0x33000000),
                offset: Offset(2, 4),
              ),
            ],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Row(
            children: [
<<<<<<< Updated upstream
              Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                      child: GestureDetector(
                          onTap: () {
                            Navigator.pushReplacementNamed(context, '/mainNavigation');
                          },
                        child: Icon(
                          Icons.arrow_back,
                          color: Color(0xFF39408A),
                          size: 35,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 40),
                child: Container(
                  width: 316,
                  height: 68,
                  decoration: BoxDecoration(
                    color: Color(0xFFD00909),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(
                          2,
                          4,
                        ),
                      )
                    ],
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                        child: Icon(
                          Icons.history,
                          color: FlutterFlowTheme.of(context).primaryBackground,
                          size: 30,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(55, 0, 0, 0),
                        child: Text(
                          'History',
                          style: GoogleFonts.inter(
                            textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                              color: FlutterFlowTheme.of(context).primaryBackground,
                              fontSize: 20,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                Shadow(
                                  color: Colors.black,
                                  offset: Offset(2.0, 4.0),
                                  blurRadius: 4.0,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
=======
              const SizedBox(width: 30),
              Icon(
                icon,
                color: FlutterFlowTheme.of(context).primaryBackground,
                size: 30,
>>>>>>> Stashed changes
              ),
              const SizedBox(width: 55),
              Text(
                label,
                style: GoogleFonts.inter(
                  textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                        color: FlutterFlowTheme.of(context).primaryBackground,
                        fontSize: 20,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        shadows: const [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2.0, 4.0),
                            blurRadius: 4.0,
                          )
                        ],
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
