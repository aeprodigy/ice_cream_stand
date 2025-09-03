import 'package:flutter/material.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //we get the user's name from the database for the authenticated user, this might be firebase or your custom database with the use of apis from the backend.
          Text(
            "Hello Michael!",
            style: TextStyle(
              color: AppColors.blackCustom,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 10),
          Text(
            "What flavour do you want today?",
            style: TextStyle(
              color: Colors.grey[700],
              fontSize: 18,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
