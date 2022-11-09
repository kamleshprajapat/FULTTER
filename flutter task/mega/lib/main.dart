import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MainState();
}

class _MainState extends State<MyApp> {
  var title_list = ["Cajun Shrimp", "Maialino Mare", "Bombay Food", "ET voila"];
  var dcc_list = ["Mark T", "Gabie Bonheur", "Cristiana P", "Adam GH"];
  var pop_list = ["****", "****", "****", "****", "****"];
  var price_list = ["@130", "@275", "@350", "@230"];
  var img_list = [
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvcSC1LpX8O9BZRGBwX6_Geqsms-CnBEqK6Q&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOsFURz8UyJxoTsPxgrJ3k5AyoRLsTZqBGEA&usqp=CAU",
    "https://www.mumbailive.com/images/media/images/images_1543400661097_Via_Bombay___Food.jpg?bg=522f08&crop=6110%2C3430.175438596491%2C0%2C211.41228070175453&fit=crop&fm=webp&h=768&w=1368",
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.search_rounded,
                color: Colors.blue,
              ),
              Icon(
                Icons.notifications,
                color: Colors.blue,
              )
            ],
          ),
          backgroundColor: Colors.transparent,
        ),
        body: ListView.builder(
          itemCount: title_list.length,
          itemBuilder: ((context, index) {
            //we can use gesture detector or inkwell (ripple effect)
            //in gesture decotor we get more controllers
            return GestureDetector(
              onTap: (() {
                //on click event
              }),
              child: Card(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 100,
                            width: 152,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.network(
                                  img_list[index],
                                  height: 100,
                                  width: 100,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Column(
                                    children: [
                                      Container(
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  Text(
                                                    title_list[index],
                                                    style: TextStyle(
                                                        fontSize: 24,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Text(
                                                    price_list[index],
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 20),
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              dcc_list[index],
                                              style: TextStyle(
                                                  color: Colors.grey[500]),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              pop_list[index],
                                              style: TextStyle(
                                                  color: Colors.yellow[500],
                                                  fontSize: 35),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    height: 25,
                                                    width: 30,
                                                    color: Color.fromARGB(
                                                        255, 166, 194, 212),
                                                    child: Icon(
                                                        Icons.shopping_cart),
                                                  ),
                                                  SizedBox(
                                                    width: 20,
                                                  ),
                                                  Container(
                                                    height: 20,
                                                    width: 55,
                                                    color: Color.fromARGB(
                                                        255, 166, 194, 212),
                                                    child: Center(
                                                        child: Text("Details")),
                                                  ),
                                                  SizedBox(
                                                    height: 30,
                                                  )
                                                ],
                                              ),
                                            ),
                                            Container(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [],
                                              ),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
