import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Menu());
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MyappState();
}

class _MyappState extends State<Menu> {
  TextEditingController totle1 = TextEditingController();
  double purch = 0.0, totle = 0.0;
  var maxpric;
  var buy = 0;
  bool status = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: Icon(
            Icons.local_pizza_rounded,
            color: Colors.yellow,
            size: 30,
          ),
          title: Text(
            "Amazing Pizza and Pasta",
            style: TextStyle(
                color: Colors.black, fontStyle: FontStyle.italic, fontSize: 28),
          ),
          backgroundColor: Colors.yellowAccent),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://static.toiimg.com/thumb/53110049.cms?width=1200&height=900",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 1 large pizza = 10.99 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch + 10.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS1Tp9QfWQlWHXvnP8pynioIY_jLjiY3gXZlEQUxfmjSCdTvDuUs3FT_NjQRdLteMWxOpI&usqp=CAU",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 2 large Pizzas = 20.99 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch + 20.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://image.shutterstock.com/image-photo/details-3-different-pizza-idea-260nw-1686377056.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 3 Large Pizzas = 29.99 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch + 29.99}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Container(
            child: Text(
              "**Buy 4 or more pizza and get \n      1.5lt of soft drink free**",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.blue,
                  backgroundColor: Colors.yellow),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            child: Text("**PASTA MENU **",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.blue,
                    backgroundColor: Color.fromARGB(255, 255, 59, 59))),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://cdn.shopify.com/s/files/1/0405/8215/2352/products/gluten-free-pasta-combo-pack-of-4-281243_1024x1024@2x.jpg?v=1643714894",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 1 large pasta = 09.05 AUD ",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch + 09.05}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://i.insider.com/5cf7c8fb11e2050dc5170789?width=1000&format=jpeg&auto=webp",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 2 large pastas = 17.00 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    print("Buy Item${purch + 17.00}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                child: Image.network(
                  "https://m.media-amazon.com/images/I/61u6WwaO9pL._SL1080_.jpg",
                  height: 100,
                  width: 100,
                ),
              ),
              Container(
                child: Text(
                  " 3 large pastas = 27.50 AUD",
                  style: TextStyle(fontSize: 15),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    purch = (purch + 27.50);
                    print("Buy Item${purch + 27.50}");
                  },
                  child: Text("Buy Now"))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 40,
                width: 125,
                child: ElevatedButton(
                    onPressed: (() {
                      totle = (purch);
                      print("totle Amount:->$totle");

                      totle;
                    }),
                    child: Center(
                        child: Text(
                      "TOTLE",
                      style: TextStyle(fontSize: 30, color: Colors.grey),
                    ))),
              ),
            ],
          )
        ],
      ),
    );
  }
}
