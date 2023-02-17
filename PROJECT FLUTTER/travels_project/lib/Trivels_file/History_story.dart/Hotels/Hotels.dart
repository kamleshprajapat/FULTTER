import 'package:flutter/material.dart';
import 'package:travels_project/Trivels_file/History_story.dart/Hotels/Components/Data_home.dart';
import 'package:travels_project/Trivels_file/History_story.dart/Hotels/Components/Hotel_details.dart';
import 'package:travels_project/Trivels_file/History_story.dart/Hotels/Components/data.dart';
import 'package:travels_project/Trivels_file/History_story.dart/Hotels/Components/travelcard.dart';

enum MenuSelection {
  menu1,
  menu2,
  menu3,
  menu4,
}

class hotel_details extends StatefulWidget {
  const hotel_details({super.key});

  @override
  State<hotel_details> createState() => _hotel_detailsState();
}

class _hotel_detailsState extends State<hotel_details> {
  //const hotel_details({Key? key }): super(key:key);

  DataHome object = DataHome();

  MenuSelection? selectedOone;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          backgroundColor: Color.fromARGB(255, 233, 244, 251),
          primaryColor: Color(0xfff8fcff),
        ),
        home: Scaffold(
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.menu_rounded,
                          size: 45,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image(
                            height: 50,
                            width: 50,
                            fit: BoxFit.cover,
                            image: AssetImage("Assets/image/71.jpg"),
                          ),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                    child: Text(
                      " Where Would You \n Like To Go.....?",
                      style: TextStyle(
                        fontSize: 29,
                        fontWeight: FontWeight.w800,
                        color: const Color(0xff3C4567),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12.0, vertical: 9),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 320,
                          child: TextField(
                            decoration: InputDecoration(
                              labelText: "Search For Place",
                              prefixIcon: const Icon(
                                Icons.search,
                                size: 35,
                                color: Colors.grey,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.keyboard_voice_outlined,
                                  size: 35,
                                  color: Colors.green[200],
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xff3c4657), width: 2.4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: const Color(0xff3c4657), width: 2.4),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xff3c4657),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          height: 40,
                          width: 40,
                          child: Icon(
                            Icons.filter_alt,
                            color: Colors.white,
                            size: 40,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedOone = MenuSelection.menu1;
                            });
                          },
                          child: Menu(
                            "Hotel",
                            selectedOone == MenuSelection.menu1
                                ? Colors.red
                                : Color(0xfff0f1f3),
                            selectedOone == MenuSelection.menu1
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedOone = MenuSelection.menu2;
                            });
                          },
                          child: Menu(
                            "Apartment",
                            selectedOone == MenuSelection.menu2
                                ? Colors.red
                                : Color(0xfff0f1f3),
                            selectedOone == MenuSelection.menu2
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedOone = MenuSelection.menu3;
                            });
                          },
                          child: Menu(
                            "Motel",
                            selectedOone == MenuSelection.menu3
                                ? Colors.red
                                : Color(0xfff0f1f3),
                            selectedOone == MenuSelection.menu3
                                ? Colors.white
                                : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 4, vertical: 12),
                    height: 270,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: object.getData.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Hotel_DD(
                                    object.getData[index].imageUrl,
                                    object.getData[index].name,
                                    object.getData[index].location)),
                              ),
                            );
                          },
                          child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 8),
                            height: 200,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                  image: AssetImage(
                                      object.getData[index].imageUrl),
                                  fit: BoxFit.cover),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 3,
                                  child: IconButton(
                                    onPressed: (() {
                                      onRatingUpdate:
                                      (rating) {
                                        print(rating);
                                      };
                                    }),
                                    icon: Icon(
                                      Icons.favorite_outline_sharp,
                                      size: 40,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  bottom: 10,
                                  left: 9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        object.getData[index].name,
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.location_on,
                                              size: 30, color: Colors.green),
                                          Text(
                                            object.getData[index].location,
                                            style: const TextStyle(
                                                fontSize: 22,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0, top: 12),
                    child: const Text(
                      "Popular Hotel",
                      style: TextStyle(
                          fontSize: 27,
                          color: Color(0xff3C4567),
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 12,
                    ),
                    height: 250,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: object.getAnotherDAta.length,
                      itemBuilder: ((context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: ((context) => Hotel_DD(
                                    object.getAnotherDAta[index].imageUrl,
                                    object.getAnotherDAta[index].name,
                                    object.getAnotherDAta[index].location)),
                              ),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(horizontal: 4),
                            height: 200,
                            width: 230,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      object.getAnotherDAta[index].imageUrl),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Stack(
                              children: [
                                Positioned(
                                  bottom: 10,
                                  left: 9,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        object.getAnotherDAta[index].name,
                                        style: TextStyle(
                                            fontSize: 22, color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        children: [
                                          const Icon(Icons.location_on,
                                              size: 30, color: Colors.green),
                                          Text(
                                            object
                                                .getAnotherDAta[index].location,
                                            style: const TextStyle(
                                                fontSize: 22,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                        const SizedBox(
                          height: 20,
                        );
                      }),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}

// import 'package:flutter/material.dart';
// import 'package:travels_project/Trivels_file/History_story.dart/History_image.dart';
// import 'package:travels_project/Trivels_file/History_story.dart/Hotels/Components/travelcard.dart';
// import 'package:travels_project/main.dart';

// class Hotel extends StatefulWidget {
//   const Hotel({super.key});

//   @override
//   State<Hotel> createState() => _HotelState();
// }

// class _HotelState extends State<Hotel> {
//   List<String> urls = [
//     "Assets/image/71.jpg",
//     "Assets/image/72.jpg",
//     "Assets/image/73.jpg",
//     "Assets/image/74.webp",
//     "Assets/image/75.webp",
//     "Assets/image/76.jpg",
//     "Assets/image/77.jpg",
//     "Assets/image/78.jpg",
//     "Assets/image/79.jpg",
//     "Assets/image/80.jpg",
//     "Assets/image/82.png",
//     "Assets/image/83.jpg",
//     "Assets/image/84.jpg",
//     "Assets/image/85.jpg",
//     "Assets/image/86.jpeg",
//     "Assets/image/87.jpg",
//     "Assets/image/88.jpg",
//     "Assets/image/89.jpeg",
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(255, 233, 244, 251),
//       // appBar: AppBar(
//       //   elevation: 0.0,
//       //   backgroundColor: Color(0xFFF6F7FF),
//       //   title: Icon(
//       //     Icons.menu,
//       //     color: Colors.black,
//       //   ),
//       // ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(
//           vertical: 20.0,
//           horizontal: 10.0,
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Text(
//                   " Hi, Kamlesh ",
//                   style: TextStyle(
//                     color: Colors.blue,
//                     fontSize: 32.0,
//                   ),
//                 ),
//                 SizedBox(
//                   width: 160,
//                 ),
//                 Icon(
//                   Icons.notifications_none,
//                   color: Colors.black,
//                   size: 30,
//                 )
//               ],
//             ),
//             Text(
//               "  Do You Want to Find Hotel ? ...",
//               style: TextStyle(
//                 color: Colors.black,
//                 fontSize: 20.0,
//                 fontWeight: FontWeight.w300,
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             // Material(
//             //   elevation: 10.0,
//             //   borderRadius: BorderRadius.circular(30.0),
//             //   shadowColor: Color(0x55434343),
//             //   child: TextField(
//             //     textAlign: TextAlign.start,
//             //     textAlignVertical: TextAlignVertical.center,
//             //     decoration: InputDecoration(
//             //         hintText: "Search Hotel...",
//             //         hintStyle: TextStyle(fontSize: 20),
//             //         prefixIcon: Icon(
//             //           Icons.search,
//             //           size: 30,
//             //           color: Colors.black54,
//             //         ),
//             //         border: InputBorder.none),
//             //   ),
//             // ),
//             SizedBox(
//               height: 30.0,
//             ),
//             DefaultTabController(
//               length: 3,
//               child: Expanded(
//                 child: Column(
//                   children: [
//                     TabBar(
//                       indicatorColor: Colors.blue[300],
//                       unselectedLabelColor: Colors.red,
//                       labelColor: Colors.blueGrey[400],
//                       labelPadding: EdgeInsets.symmetric(horizontal: 8.0),
//                       labelStyle:
//                           TextStyle(fontStyle: FontStyle.italic, fontSize: 20),
//                       tabs: [
//                         Tab(
//                           text: "Trending",
//                         ),
//                         Tab(
//                           text: "Promotion",
//                         ),
//                         Tab(
//                           text: "Favorites",
//                         ),
//                       ],
//                     ),
//                     SizedBox(
//                       height: 20.0,
//                     ),
//                     Container(
//                       height: 300,
//                       child: TabBarView(
//                         children: [
//                           Container(
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(
//                                         urls[0],
//                                         "Welcomhotel by ITC Hotels",
//                                         "Jodhpur",
//                                         5),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(
//                                         urls[1],
//                                         "Talai Bagh PalaceOpens Hotels",
//                                         "Jaipur",
//                                         5),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(urls[2],
//                                         "Samode Haveli Hotels", "udaipur", 4),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(
//                                         urls[3],
//                                         " Luxury by Lemon Tree Hotels",
//                                         "Udaipur",
//                                         4),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(urls[4],
//                                         " Shiv Villa Hotel", "Mount Abu", 4),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(
//                                         urls[5], "Marriott ", "Jaisalmer", 4),
//                                   ),
//                                 ),
//                                 Card(
//                                   child: InkWell(
//                                     onTap: () {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                               builder: ((context) =>
//                                                   Histry_Image())));
//                                     },
//                                     child: travelCard(
//                                         urls[6], "Marriott ", "Alwar", 4),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                           Container(
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [],
//                             ),
//                           ),
//                           Container(
//                             child: ListView(
//                               scrollDirection: Axis.horizontal,
//                               children: [],
//                             ),
//                           ),
//                           Container(
//                             height: 12,
//                             width: 20,
//                             color: Colors.red,
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Card(
//                       color: Colors.yellow,
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
