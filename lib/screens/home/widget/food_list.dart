import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurant.dart';

import '../../../constants/colors.dart';

class FoodList extends StatelessWidget {
  const FoodList({
    super.key,
    required this.selected,
    required this.callback,
    required this.restaurant,
  });

  final int selected;
  final Function callback;
  final Restaurant restaurant;

  @override
  Widget build(BuildContext context) {
    final category = restaurant.menu.keys.toList();

    return Container(
      height: 100,
      padding: const EdgeInsets.symmetric(vertical: 30),
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () => callback(index),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: selected == index ? kPrimaryColor : Colors.white,
            ),
            child: Text(
              category[index],
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 20),
        itemCount: category.length,
      ),
    );
  }
}
