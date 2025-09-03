import 'package:flutter/material.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';

class NewInProducts extends StatelessWidget {
  const NewInProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "New in",
            style: TextStyle(
              color: AppColors.blackCustom,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),

          //filter (New In)to filter the products on the screen, this icon can be used by the user to filter the products fetched from the db
          Text(
            "See all",
            style: TextStyle(
              color: AppColors.pinkCustom,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
