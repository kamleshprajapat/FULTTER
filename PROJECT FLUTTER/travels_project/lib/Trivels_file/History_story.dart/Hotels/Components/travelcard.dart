import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatelessWidget {
  // const Menu({
  //   Key? key,
  // }) : super(key: key);

  final String text;
  final Color color;
  final textColor;
  const Menu(this.text, this.color, this.textColor);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 130,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(18),
      ),
      child: Center(
        child: Text(
          "${text}",
          style: TextStyle(fontSize: 22, color: textColor),
        ),
      ),
    );
  }
}
























// import 'package:flutter/material.dart';
// import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Widget travelCard(
//     String imgUrl, String Hotelname, String location, int rating) {
//   return Card(
//     margin: EdgeInsets.only(right: 22.0),
//     clipBehavior: Clip.antiAlias,
//     shape: RoundedRectangleBorder(
//       borderRadius: BorderRadius.circular(30.0),
//     ),
//     elevation: 0.0,
//     child: InkWell(
//       onTap: () {},
//       child: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               imgUrl,
//             ),
//             fit: BoxFit.cover,
//             scale: 2.0,
//           ),
//         ),
//         width: 200.0,
//         child: Padding(
//           padding: EdgeInsets.all(12.0),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   RatingBar.builder(
//                     initialRating: 3,
//                     minRating: 1,
//                     direction: Axis.horizontal,
//                     allowHalfRating: true,
//                     itemCount: 5,
//                     itemSize: 20,
//                     //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
//                     itemBuilder: (context, _) => Icon(
//                       Icons.star,
//                       color: Colors.amber,
//                     ),
//                     onRatingUpdate: (rating) {
//                       print(rating);
//                     },
//                   ),
//                 ],
//               ),
//               Expanded(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       Hotelname,
//                       style: TextStyle(
//                           fontSize: 22.0,
//                           fontWeight: FontWeight.w900,
//                           color: Colors.white),
//                     ),
//                     SizedBox(
//                       height: 3.0,
//                     ),
//                     Center(
//                       child: Icon(Icons.location_pin,
//                           size: 30, color: Color.fromARGB(255, 47, 192, 51)),
//                     ),
//                     Center(
//                       child: Text(
//                         location,
//                         style: TextStyle(
//                             fontSize: 20.0,
//                             fontWeight: FontWeight.w600,
//                             color: Color.fromARGB(255, 157, 15, 5)),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 6.0,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ),
//   );
// }
