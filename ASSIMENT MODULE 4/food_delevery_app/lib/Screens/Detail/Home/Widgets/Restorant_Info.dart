import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delevery_app/Contansts/Colors.dart';
import 'package:food_delevery_app/Models/Restorant.dart';

class RestaurantInfo extends StatelessWidget {
  final restaurant = Restaurant.genrateRestaurant();

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
                  Text(
                    restaurant.name,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Text(restaurant.waitTime),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurant.distance,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        restaurant.label,
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey.withOpacity(0.4)),
                      ),
                    ],
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  restaurant.logoUrl,
                  width: 80,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                '"${restaurant.desc}"',
                style: TextStyle(fontSize: 16),
              ),
              Spacer(),
              Row(
                children: [
                  Icon(
                    Icons.star_outline,
                    color: kprimaryColor,
                  ),
                  Text(
                    '${restaurant.score}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(
                    width: 16,
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
