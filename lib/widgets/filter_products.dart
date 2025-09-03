import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';

class FilterProducts extends StatelessWidget {
  const FilterProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Popular",
            style: TextStyle(
              color: AppColors.blackCustom,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          //filter icon to filter the products on the screen, this icon can be used by the user to filter the products fetched from the db
          FaIcon(
            FontAwesomeIcons.filter,
            size: 25,
            color: AppColors.pinkCustom,
          ),
        ],
      ),
    );
  }
}
