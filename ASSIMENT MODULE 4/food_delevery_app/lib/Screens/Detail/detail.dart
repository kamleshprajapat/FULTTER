import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delevery_app/Contansts/Colors.dart';
import 'package:food_delevery_app/Models/Food.dart';
import 'package:food_delevery_app/Screens/Detail/widget/Food_image.dart';
import 'package:food_delevery_app/Screens/Detail/widget/Fooddetial.dart';
import 'package:food_delevery_app/Widgets/Cosumer_App_bar.dart';

class DetaiPage extends StatelessWidget {
  final Food food;
  DetaiPage(this.food);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kprimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            CostomAppBar(
              Icons.arrow_back_outlined,
              Icons.favorite_border_outlined,
              leftCallback: () => Navigator.of(context).pop(),
            ),
            FoodImg(food),
            FoodDetail(food),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 100,
        height: 56,
        child: RawMaterialButton(
          fillColor: kprimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          elevation: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black,
                size: 30,
              ),
              Container(
                padding: EdgeInsets.all(15),
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Text(
                  food.quantity.toString(),
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
