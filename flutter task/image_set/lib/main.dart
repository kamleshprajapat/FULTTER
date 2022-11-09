import 'package:flutter/material.dart';

main() {
  runApp(NewApp());
}

class NewApp extends StatefulWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  State<NewApp> createState() => _NewAppState();
}

class _NewAppState extends State<NewApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.image,
            size: 50,
          ),
          title: Text("Cartun Image"),
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/image.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                    "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-760w,f_auto,q_auto:best/rockcms/2022-08/220805-border-collie-play-mn-1100-82d2f1.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                    "https://static.wixstatic.com/media/2cd43b_8403077ae6d243879e6954ba5134664b~mv2.png/v1/fill/w_285,h_456,q_90/2cd43b_8403077ae6d243879e6954ba5134664b~mv2.png",
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://cdn-cf.sharechat.com/cv-5fc8ba4_1643909042292_sc_new_compressed_thumb.jpeg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://i1.sndcdn.com/avatars-000176142250-hkrzku-t500x500.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://m.media-amazon.com/images/I/71Dr+6mJo7L._SY355_.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://static01.nyt.com/images/2021/02/27/arts/tomjerry1/tomjerry1-mediumSquareAt3X.jpg",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://qph.cf2.quoracdn.net/main-qimg-55a3251fd71180bffcc4896a89541943-lq",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Image.network(
                    "https://images.firstpost.com/wp-content/uploads/2022/02/tom-and-jerry.jpeg",
                    height: 150,
                    width: 150,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
