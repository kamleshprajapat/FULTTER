import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class Hotel_DD extends StatelessWidget {
  //const Hotel_DD({super.key}); super(Key:key);

  final String imgeUrl;
  final String hotelLoction;
  final String hotelName;

  Hotel_DD(this.imgeUrl, this.hotelName, this.hotelLoction);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              "₹10,620",
              style: TextStyle(fontSize: 40),
            ),
            Container(
              height: 60,
              child: MaterialButton(
                minWidth: 250,
                onPressed: () {},
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Color(0xff3c4657),
                child: Text(
                  "Seclect Room",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(imgeUrl), fit: BoxFit.cover),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 169, 189, 250),
                                borderRadius: BorderRadius.circular(12)),
                            width: 60,
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 40,
                            ),
                          ),
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 169, 189, 250),
                                borderRadius: BorderRadius.circular(12)),
                            width: 60,
                            child: const Icon(
                              Icons.favorite_border,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 12.0, vertical: 12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      hotelName,
                      style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemSize: 35,
                          // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                          itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          onRatingUpdate: (rating) {
                            print(rating);
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 30,
                        ),
                        Text(
                          hotelLoction,
                          style: TextStyle(fontSize: 24),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Detail :",
                      style: TextStyle(fontSize: 24),
                    ),
                    Text(
                      "The epitome of Rajasthani grandeur and regal hospitality, Jodhpur is the preferred destination of many travellers. Located in this historic city, Welcomhotel Jodhpur is a blissful oasis spread over 40468 m2 and celebrates the regions majestic forts, palaces, royalty and grandeur thru its architecture, interiors, cuisine, rituals & an ethnic mélange of unique experiences",
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 233, 148),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.wifi,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 228, 221),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.ac_unit_rounded,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 214, 167),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.restaurant,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 233, 148),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.car_rental,
                        size: 40,
                      ),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 195, 233),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        Icons.pool_rounded,
                        size: 40,
                      ),
                    )
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //     children: [
              //       const Text(
              //         "₹10,620",
              //         style: TextStyle(fontSize: 40),
              //       ),
              //       Container(
              //         height: 60,
              //         child: MaterialButton(
              //           minWidth: 250,
              //           onPressed: () {},
              //           shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(12)),
              //           color: Color(0xff3c4657),
              //           child: Text(
              //             "Seclect Room",
              //             style: TextStyle(fontSize: 22, color: Colors.white),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
