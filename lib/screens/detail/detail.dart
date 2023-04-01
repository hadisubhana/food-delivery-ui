import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/screens/detail/widget/food_detail.dart';
import 'package:food_delivery/screens/detail/widget/food_img.dart';
import 'package:food_delivery/widgets/custom_app_bar.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.food});

  final Food food;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
          child: Column(
        children: [
          CustomAppBar(
            leftIcon: Icons.arrow_back_ios_outlined,
            rightIcon: Icons.favorite_outline,
            leftCallback: () => Navigator.pop(context),
          ),
          FoodImg(food: food),
          FoodDetail(food: food),
        ],
      )),
      floatingActionButton: SizedBox(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kPrimaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          elevation: 2,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Text(
                  food.quantity.toString(),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
