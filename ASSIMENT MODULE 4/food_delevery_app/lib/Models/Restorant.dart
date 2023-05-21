import 'package:food_delevery_app/Models/Food.dart';

class Restaurant {
  String name;
  String waitTime;
  String distance;
  String label;
  String logoUrl;
  String desc;
  num score;
  Map<String, List<Food>> menu;
  Restaurant(this.name, this.waitTime, this.distance, this.label, this.logoUrl,
      this.desc, this.score, this.menu);
  static Restaurant genrateRestaurant() {
    return Restaurant('Restaurant', '20-30 min', '2.4km', 'Restaurant',
        'Images/res_Login.png', 'Orang Sandwiches is delicious', 4.5, {
      'Recommend': Food.generateRecommendFoods(),
      'Popular': Food.generatePopularFoods(),
      'Noodles': [],
      'Pizzat': [],
    });
  }
}
