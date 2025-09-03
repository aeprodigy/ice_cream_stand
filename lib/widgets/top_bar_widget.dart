import 'package:flutter/material.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';

class TopBarWidget extends StatelessWidget {
  const TopBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: AppColors.bgColor),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //icon
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: AppColors.pinkCustom,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Icon(Icons.person, size: 30, color: Colors.white),
            ),
            //bag(cart)
            Icon(Icons.shopping_bag, size: 25, color: AppColors.pinkCustom),
          ],
        ),
      ),
    );
  }
}
