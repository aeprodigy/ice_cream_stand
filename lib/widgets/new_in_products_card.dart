import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';
import 'package:ice_cream_stand/models/new_product.dart';

class NewInProductsCard extends StatelessWidget {
  final NewProduct newInProducts;
  const NewInProductsCard({super.key, required this.newInProducts});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Image.asset(
            newInProducts.image,
            height: 200,
            width: 100,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: 5),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                //name
                Text(
                  newInProducts.name,
                  style: TextStyle(
                    color: AppColors.blackCustom,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
                //category
                Text(
                  newInProducts.category,
                  style: TextStyle(
                    color: AppColors.blackCustom,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),
                ),
                //price
                Text(
                  "\K${newInProducts.price.toStringAsFixed(2)}",
                  style: TextStyle(
                    color: AppColors.pinkCustom,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5),
        //favorite icon
        FaIcon(FontAwesomeIcons.heart, color: AppColors.pinkCustom),
      ],
    );
  }
}
