import 'package:flutter/material.dart';
import 'package:ice_cream_stand/constants/app_colors.dart';
import 'package:ice_cream_stand/models/new_product.dart';
import 'package:ice_cream_stand/models/product.dart';
import 'package:ice_cream_stand/widgets/filter_products.dart';
import 'package:ice_cream_stand/widgets/greetings_widget.dart';
import 'package:ice_cream_stand/widgets/new_in_products.dart';
import 'package:ice_cream_stand/widgets/new_in_products_card.dart';
import 'package:ice_cream_stand/widgets/product_card.dart';
import 'package:ice_cream_stand/widgets/top_bar_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  //TODO: put providers,
  //cart magement,
  // products,
  //custom product containers
  //products in the model
  //product details page
  //fancy fonts

  //The Objects
  //products
  final products = Product.iceCreams;
  //new in products
  final newProducts = NewProduct.newProduct;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //user icon and cart bag
              SizedBox(height: 30),
              TopBarWidget(),
              //greetings
              SizedBox(height: 25),
              GreetingsWidget(),
              SizedBox(height: 25),
              //filter
              FilterProducts(),
              SizedBox(height: 25),

              //popular products section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: SizedBox(
                  width: double.maxFinite,
                  height: 350,
                  child: ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final product = products[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: SizedBox(
                          width: 220, 
                          child: ProductCard(product: product),
                        ),
                      );
                    },
                  ),
                ),
              ),

              
              SizedBox(height: 20),
              //new in section(vertical list view)
              NewInProducts(),
              SizedBox(height: 10),

              //the new products
              // NewInProductsCard(newInProducts: newInProducts),
              ListView.builder(
                shrinkWrap: true, // Constrain height to only what's needed
                physics: NeverScrollableScrollPhysics(),
                itemCount: newProducts.length,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  final newProduct = newProducts[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: SizedBox(
                      height: 100,
                      child: NewInProductsCard(newInProducts: newProduct),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
