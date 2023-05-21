import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:food_delevery_app/Contansts/Colors.dart';
import 'package:food_delevery_app/Models/Restorant.dart';
import 'package:food_delevery_app/Screens/Detail/Home/Widgets/Food_List.dart';
import 'package:food_delevery_app/Screens/Detail/Home/Widgets/Food_List_view.dart';
import 'package:food_delevery_app/Screens/Detail/Home/Widgets/Restorant_Info.dart';
import 'package:food_delevery_app/Widgets/Cosumer_App_bar.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selected = 0;

  final pageController = PageController();
  final restaurant = Restaurant.genrateRestaurant();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackground,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CostomAppBar(
            Icons.arrow_back_ios_new_outlined,
            Icons.search_outlined,
          ),
          RestaurantInfo(),
          FoodList(selected, (int index) {
            setState(() {
              selected = index;
            });
            pageController.jumpToPage(index);
          }, restaurant),
          Expanded(
            child: FoodListView(selected, (int index) {
              setState(() {
                selected = index;
              });
            }, pageController, restaurant),
          ),
          Container(
            height: 60,
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: SmoothPageIndicator(
              controller: pageController,
              count: restaurant.menu.length,
              effect: CustomizableEffect(
                dotDecoration: DotDecoration(
                  height: 8,
                  width: 8,
                  color: Colors.grey.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(8),
                ),
                activeDotDecoration: DotDecoration(
                  height: 10,
                  width: 10,
                  color: kprimaryColor,
                  borderRadius: BorderRadius.circular(10),
                  dotBorder:
                      DotBorder(color: kprimaryColor, padding: 2, width: 2),
                ),
              ),
              onDotClicked: (index) => pageController.jumpToPage(index),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: kprimaryColor,
        elevation: 2,
        child: Icon(
          Icons.shopping_bag_outlined,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
