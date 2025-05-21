import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import './models/login_page_model.dart';
import 'package:mindly/screens/menu/main_navigation.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  static String routeName = 'LoginPage';
  static String routePath = '/loginPage';

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
      body: Container(
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
    child: Center(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 60),
            Text(
              'Log in',
              style: GoogleFonts.inter(
                textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                  color: Colors.black,
                  fontSize: 40,  // Increased size
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            SizedBox(height: 40),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.85,
                child: TextFormField(
                  controller: _model.textController1,
                  focusNode: _model.textFieldFocusNode1,
                  autofocus: false,
                  obscureText: false,
                  decoration: InputDecoration(
                    isDense: true,
                    labelStyle: GoogleFonts.inter(
                      textStyle: FlutterFlowTheme.of(context).labelMedium.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                        shadows: [
                          Shadow(
                            color: FlutterFlowTheme.of(context).secondaryText,
                            offset: Offset(2.0, 4.0),
                            blurRadius: 4.0,
                          )
                        ],
                      ),
                    ),
                    hintText: 'Email',
                    hintStyle: GoogleFonts.inter(
                      textStyle: FlutterFlowTheme.of(context).labelMedium.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0x00000000),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).error,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    filled: true,
                    fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  style: GoogleFonts.inter(
                    textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                      color: Colors.black,
                      fontSize: 16,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  cursorColor: FlutterFlowTheme.of(context).primaryText,
                  validator:
                      _model.textController1Validator.asValidator(context),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 0.85,
                  child: TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    autofocus: false,
                    obscureText: !_model.passwordVisibility,
                    decoration: InputDecoration(
                      isDense: true,
                      labelStyle: GoogleFonts.inter(
                        textStyle: FlutterFlowTheme.of(context).labelMedium.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w900,
                          shadows: [
                            Shadow(
                              color: FlutterFlowTheme.of(context).secondaryText,
                              offset: Offset(2.0, 4.0),
                              blurRadius: 4.0,
                            )
                          ],
                        ),
                      ),
                      hintText: 'Password',
                      hintStyle: GoogleFonts.inter(
                        textStyle: FlutterFlowTheme.of(context).labelMedium.copyWith(
                          color: Colors.black,
                          fontSize: 16,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      filled: true,
                      fillColor:
                          FlutterFlowTheme.of(context).secondaryBackground,
                      suffixIcon: InkWell(
                        onTap: () => safeSetState(
                          () => _model.passwordVisibility =
                              !_model.passwordVisibility,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: Colors.black,
                          size: 22,
                        ),
                      ),
                    ),
                    style: GoogleFonts.inter(
                      textStyle: FlutterFlowTheme.of(context).bodyMedium.copyWith(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    cursorColor: FlutterFlowTheme.of(context).primaryText,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 75, 0, 0),
              child: FFButtonWidget(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MainNavigation(),
                        ),
                      );
                },
                text: 'Log in',
                options: FFButtonOptions(
                  // Change width from 50 to a percentage of screen width
                  width: MediaQuery.sizeOf(context).width * 0.4, // 40% of screen width
                  height: 50,
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                  iconPadding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                  color: Color(0xFF84E6D1),
                  textStyle: GoogleFonts.interTight(
                    textStyle: FlutterFlowTheme.of(context).titleSmall.copyWith(
                      color: Colors.black,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  elevation: 4,
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ],
          ),
        ),
      ), // Close Container child
    ), // Close body
  ); // Close Scaffold
} // 
}