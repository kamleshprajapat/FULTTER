import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Futura',
        primarySwatch: Colors.teal,
      ),
      home: DefaultTabController(
        length: 4,
        child: Home(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final TextEditingController _searchText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Center(
        child: TabBarView(
          children: [
            _tabBarViewItem(Icons.home, 'My Own Appbar'),
            _tabBarViewItem(Icons.group, 'Group'),
            _tabBarViewItem(Icons.notifications, 'Notifications'),
            _tabBarViewItem(Icons.menu, 'Menu'),
          ],
        ),
      ),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: const Size.fromHeight(150),
      child: Container(
        margin: const EdgeInsets.only(top: 5),
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: _boxDecoration(),
        child: SafeArea(
          child: Column(
            children: [
              Text(
                  'Create custom toolbar as per given below design Create toolbar with spinner and search functionality'),
              _topBar(),
              const SizedBox(height: 5),
              _searchBox(),
              _tabBar(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
      borderRadius: const BorderRadius.vertical(
        bottom: Radius.circular(20),
      ),
      gradient: LinearGradient(
        colors: [Colors.white, Colors.teal.shade300],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    );
  }

  Widget _topBar() {
    return Row(
      children: [
        Image.network(
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIi3xyv7ZQT0gUpYsya2tidZ1iQXL7SJg-6w&usqp=CAU',
          scale: 50,
        ),
        const Expanded(
          child: Text(
            'EasySoftCode',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 16),
          ),
        ),
        const CircleAvatar(
          radius: 15,
          backgroundImage: NetworkImage(
              'https://png.pngtree.com/png-clipart/20220306/original/pngtree-muslim-boy-logo-design-png-image_7418748.png'),
        )
      ],
    );
  }

  Widget _searchBox() {
    return SizedBox(
      height: 35,
      child: TextFormField(
        textAlign: TextAlign.start,
        controller: _searchText,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: const Icon(Icons.search),
          suffixIcon: InkWell(
            child: const Icon(Icons.close),
            onTap: () {
              _searchText.clear();
            },
          ),
          hintText: 'Search...',
          contentPadding: const EdgeInsets.all(0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
    );
  }

  Widget _tabBar() {
    return TabBar(
      labelPadding: const EdgeInsets.all(0),
      labelColor: Colors.black,
      indicatorColor: Colors.black,
      unselectedLabelColor: Colors.teal.shade800,
      tabs: const [
        Tab(
          iconMargin: EdgeInsets.all(0),
          icon: Icon(Icons.home),
          text: 'Home',
        ),
        Tab(
          iconMargin: EdgeInsets.all(0),
          icon: Icon(Icons.group),
          text: 'Group',
        ),
        Tab(
          iconMargin: EdgeInsets.all(0),
          icon: Icon(Icons.notifications),
          text: 'Notifications',
        ),
        Tab(
          iconMargin: EdgeInsets.all(0),
          icon: Icon(Icons.menu),
          text: 'Menu',
        ),
      ],
    );
  }

  Widget _tabBarViewItem(IconData icon, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 100,
        ),
        Text(
          name,
          style: const TextStyle(fontSize: 40),
        ),
      ],
    );
  }
}
