import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './models/achievements_page_model.dart';
export './models/achievements_page_model.dart';

class AchievementsWidget extends StatefulWidget {
  const AchievementsWidget({super.key});

  static String routeName = 'Achievements';
  static String routePath = '/achievementsPage';

  @override
  State<AchievementsWidget> createState() => _AchievementsWidgetState();
}

class _AchievementsWidgetState extends State<AchievementsWidget> {
  late AchievementsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AchievementsModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: ClipRRect(
          child: Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset(
                  'assets/images/background.png',
                ).image,
              ),
            ),
            child: SingleChildScrollView(
              child: Padding(
              padding: EdgeInsets.symmetric(vertical: 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
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
                                Navigator.pushReplacementNamed(
                                  context, 
                                  '/mainNavigation',
                                  arguments: {'selectedIndex': 3}, // Assuming profile is index 3 in bottom nav
                                );
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
                    Align(
                      alignment: AlignmentDirectional(0, -1),
                      child: Text(
                        'Achievements',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                            color: FlutterFlowTheme.of(context).primaryBackground,
                            fontSize: 40,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            height: 1.2, // Changed from lineHeight
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
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Unlocked',
                          style: GoogleFonts.inter(
                            textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                              color: Colors.white,
                              fontSize: 22,
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
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(
                                  2,
                                  2,
                                ),
                                spreadRadius: 4,
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                                  child: Text(
                                    'First Step',
                                    style: GoogleFonts.inter(
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                  child: Icon(
                                    Icons.check,
                                    color: Color(0xFF10C010),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                  child: Text(
                                    'Complete your first quiz', // Fixed typo in "Complete"
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.9,
                          //height: MediaQuery.sizeOf(context).height * 0.1,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondaryBackground,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x33000000),
                                offset: Offset(
                                  2,
                                  2,
                                ),
                                spreadRadius: 4,
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(-1, -1),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                                  child: Text(
                                    'Getting Warmer',
                                    style: GoogleFonts.inter(
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                  child: Icon(
                                    Icons.check,
                                    color: Color(0xFF10C010),
                                    size: 24,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(-1, 0),
                                child: Padding(
                                  padding:
                                      EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                  child: Text(
                                    'Finish 5 quizzes',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.inter(
                                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                        letterSpacing: 0.0,
                                        fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                        fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      height: 30,
                      thickness: 2,
                      indent: 10,
                      endIndent: 10,
                      color: FlutterFlowTheme.of(context).alternate,
                    ),
                    Align(
                      alignment: AlignmentDirectional(-1, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                        child: Text(
                          'Locked',
                          style: GoogleFonts.inter(
                            textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                              color: Colors.white,
                              fontSize: 22,
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
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            //height: MediaQuery.sizeOf(context).height * 0.1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    2,
                                    4,
                                  ),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, -1),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                                    child: Text(
                                      'Quiz Pro',
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color(0xFFFF0003),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                    child: Text(
                                      'Finish 20 quizzes',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            //height: MediaQuery.sizeOf(context).height * 0.1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    2,
                                    2,
                                  ),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, -1),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                                    child: Text(
                                      'Bronze Mind',
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color(0xFFFF0003),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                    child: Text(
                                      'Earn 100 total points',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Opacity(
                      opacity: 0.5,
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                          child: Container(
                            width: MediaQuery.sizeOf(context).width * 0.9,
                            //height: MediaQuery.sizeOf(context).height * 0.1,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 4,
                                  color: Color(0x33000000),
                                  offset: Offset(
                                    2,
                                    2,
                                  ),
                                  spreadRadius: 4,
                                )
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(-1, -1),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 15, 0, 0),
                                    child: Text(
                                      'Quiz Collector',
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                                    child: Icon(
                                      Icons.lock,
                                      color: Color(0xFFFF0003),
                                      size: 24,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(-1, 0),
                                  child: Padding(
                                    padding:
                                        EdgeInsetsDirectional.fromSTEB(15, 0, 0, 0),
                                    child: Text(
                                      'Try 5 different categories',
                                      textAlign: TextAlign.center,
                                      style: GoogleFonts.inter(
                                        textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                                          letterSpacing: 0.0,
                                          fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                                          fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
