import 'package:flutter/material.dart';
import 'package:mi_card/post.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  List<PostCard> posts = [
    PostCard(),
    PostCard(),
    PostCard(),
    PostCard(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: Colors.indigo[900],
                  ),
                  title: Text(
                    'Where to?',
                    style: TextStyle(
                      color: Colors.indigo[900],
                      fontFamily: 'Source Sans Pro',
                      fontSize: 20.0,
                    ),
                  ),
                  trailing: Icon(Icons.arrow_back),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index) {
                    return posts[index];
                  },
                ),
              )
            ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Ana Sayfa",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Siparişlerim",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profil",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "asd",
            backgroundColor: Colors.grey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "asd",
            backgroundColor: Colors.grey,
          ),
        ],
        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.all(20.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       Icon(
        //         Icons.search,
        //         color: Colors.indigo[900],
        //       ),
        //       Icon(
        //         Icons.heart_broken,
        //         color: Colors.indigo[900],
        //       ),
        //       Icon(
        //         Icons.trip_origin,
        //         color: Colors.indigo[900],
        //       ),
        //       Icon(
        //         Icons.inbox,
        //         color: Colors.indigo[900],
        //       ),
        //       Icon(
        //         Icons.login,
        //         color: Colors.indigo[900],
        //       ),
        //     ],
        //   ),
        // ),
      ),
    ));
  }
}
