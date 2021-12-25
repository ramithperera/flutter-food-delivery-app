import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/restaurant.dart';

class ResturantInfo extends StatelessWidget {
  final restaurant = Restaurant.generateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 40),
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(restaurant.name),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text(restaurant.waitTime),
                      Text(restaurant.distance),
                      Text(restaurant.label),
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
