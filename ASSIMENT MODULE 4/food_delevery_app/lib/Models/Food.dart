import 'package:flutter/material.dart';

class Food {
  String ImgUrl;
  String desc;
  String name;
  String waitTime;
  num score;
  String cal;
  num price;
  num quantity;
  List<Map<String, String>> ingredients;
  String about;
  bool hightLight;
  Food(this.ImgUrl, this.desc, this.name, this.waitTime, this.score, this.cal,
      this.price, this.quantity, this.ingredients, this.about,
      {this.hightLight = false});
  static List<Food> generateRecommendFoods() {
    return [
      Food(
          'Images/Dish01.png',
          'No1. in Sales',
          'Soba Soup',
          '50 min',
          4.5,
          '325 kcal',
          12,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth, one of a varienty of types of noodel and a Select of meats or vegetables, often topped with a boiled egg.',
          hightLight: true),
      Food(
          'Images/Dish02.png',
          'Low Fat',
          'Sai Ua Samun Phrai',
          '50 min',
          4.5,
          '325 kcal',
          18,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth',
          hightLight: true),
      Food(
          'Images/Dish03.png',
          'Highly Recommended',
          'Ratatoulle Pasta',
          '50 min',
          4.5,
          '325 kcal',
          17,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth',
          hightLight: true),
    ];
  }

  static List<Food> generatePopularFoods() {
    return [
      Food(
          'Images/Dish02.png',
          'Most Popular',
          'Tomato Checken',
          '50 min',
          4.5,
          '325 kcal',
          14.5,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth',
          hightLight: true),
      Food(
          'Images/Dish01.png',
          'No1.in Sales',
          'Soba Soup',
          '50 min',
          4.5,
          '325 kcal',
          18,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth',
          hightLight: true),
      Food(
          'Images/Dish03.png',
          'Highly Recommended',
          'Ratatoulle Pasta',
          '50 min',
          4.5,
          '325 kcal',
          17,
          1,
          [
            {
              'Noodle': 'Images/Dish01.png',
            },
            {
              'Shrimp': 'Images/Dish02.png',
            },
            {
              'Egg': 'Images/Dish03.png',
            },
            {
              'Scallion': 'Images/Dish04.png',
            },
          ],
          'Simple put ramen is a Japanese noodle soup, with a Combination a rich flavoured boroth',
          hightLight: true),
    ];
  }
}
