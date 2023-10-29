import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart'; 
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 360;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // splashscreen1qi (1:2)
        padding: EdgeInsets.fromLTRB(52*fem, 207*fem, 45*fem, 280*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // bluegeometricinitialsexpresslo (2:8)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
              width: 263*fem,
              height: 254*fem,
              child: Image.asset(
                'assets/page-1/images/blue-geometric-initial-s-express-logo-1.png',
                fit: BoxFit.cover,
              ),
            ),
            Center(
              // eduscanuy2 (2:9)
              child: Container(
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                child: Text(
                  'EduScan',
                  textAlign: TextAlign.center,
                  style: SafeGoogleFont (
                    'Poppins',
                    fontSize: 30*ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.5*ffem/fem,
                    letterSpacing: -0.6000000715*fem,
                    color: Color(0xff757575),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}