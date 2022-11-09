import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  var title_list = [
    "Android",
    "Flutter",
    "Java"
        "Android",
    "Flutter",
    "Java"
        "Android",
    "Flutter",
    "Java"
  ];
  var desc_list = [
    "Mobile",
    "Hybrid",
    "Programing"
        "Mobile",
    "Hybrid",
    "Programing"
        "Mobile",
    "Hybrid",
    "Programing"
  ];
  var img_list = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ListViewExample"),
        ),
        body: ListView.builder(
          itemCount: title_list.length,
          itemBuilder: ((context, index) {
            return GestureDetector(
              onTap: () {
                //onclick here event of list
                print("---->" + title_list[index]);
              },
              child: Card(
                  child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Image.network(img_list[index]),
                  ),
                  Container(
                    child: Text(title_list[index]),
                  )
                ],
              )),
            );
          }),
        ),
      ),
    );
  }
}
