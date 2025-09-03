import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';
import 'package:ice_cream_stand/screens/home_screen.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Image (fills the screen)
          Positioned.fill(
            child: Image.asset('assets/intro_four.jpg', fit: BoxFit.cover),
          ),
          //Container
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 350,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.9),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  // topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 40),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'Freezed',
                      style: GoogleFonts.merienda(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.pinkAccent,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16),
                    child: Text(
                      'to the complete perfection',
                      style: GoogleFonts.merienda(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //buttonm
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0, right: 16),
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  color: AppColors.pinkCustom,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const FaIcon(FontAwesomeIcons.angleRight, size: 30),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
