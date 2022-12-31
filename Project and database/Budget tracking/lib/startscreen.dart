import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:project3/screen1.dart';

class Home_screen extends StatelessWidget {
  const Home_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      body: Stack(
        children: [
          Positioned(
            top: 10,
            left: 5,
            right: 5,
            child: Column(
              children: [
                Container(
                  height: 250,
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Budget-PNG.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    //  borderRadius: BorderRadius.circular(17),
                    image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Budget.png",
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  height: 190,
                ),
                ElevatedButton(
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => Screen1())));
                  }),
                  child: Text(
                    "Start Application",
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.cyanAccent),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                ),
                Image.asset("assets/images/00.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}









// import 'package:flutter/material.dart';
// import 'package:project3/screen1.dart';

// class StartScreen extends StatelessWidget {
//   const StartScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // backgroundColor: Color.fromARGB(224, 92, 233, 238),
//       body: Container(
//         width: MediaQuery.of(context).size.width,
//         decoration: BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage(
//               "assets/images/splash.png",
//             ),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           children: [
//             Expanded(
//               child: Container(
//                 alignment: Alignment.centerLeft,
//                 child: Padding(
//                   padding: const EdgeInsets.all(50.0),
//                   child: Text(
//                     "MONEY\nTRACKER\nit's your money",
//                     style: TextStyle(
//                       color: Colors.white,
//                       fontSize: 40,
//                       fontWeight: FontWeight.w700,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.end,
//               children: [
//                 Padding(
//                     padding: EdgeInsets.symmetric(
//                       horizontal: 30.0,
//                     ),
//                     child: GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Screen1(),
//                             ));
//                       },
//                       child: Text(
//                         "Start >",
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 40,
//                           fontWeight: FontWeight.w500,
//                         ),
//                       ),
//                     )),
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
