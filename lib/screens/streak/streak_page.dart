import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class StreakScreenWidget extends StatelessWidget {
  const StreakScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // możesz zamienić na swoją stałą z FlutterFlowTheme
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/background.png'),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const SizedBox(height: 60),
            Text(
              'Streak',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2.0, 4.0),
                    blurRadius: 4.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/fire_icon_transparent.png',
                width: 200,
                height: 200,
              ),
            ),
            const SizedBox(height: 20),
            GradientText(
              '50 days',
              style: GoogleFonts.inter(
                fontSize: 30,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(2.0, 4.0),
                    blurRadius: 4.0,
                  ),
                  Shadow(
                    color: Colors.white,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  ),
                ],
              ),
              colors: [Colors.white, Colors.orangeAccent],
              gradientDirection: GradientDirection.btt,
              gradientType: GradientType.linear,
            ),
            const SizedBox(height: 20),
            Text(
              'You\'re fueling your mind daily.',
              style: GoogleFonts.roboto(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Text(
              'Don\'t let the streak cool down now!',
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
