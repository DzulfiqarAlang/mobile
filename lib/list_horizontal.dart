import 'package:flutter/material.dart';
import 'grid_data.dart';
import 'home_page.dart';
import 'list_vertical.dart';
import 'login_page.dart';

void main() => runApp(Horizontal());

class Horizontal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Welcome",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: HorizontalIconListView(),
        ),
      ),
    );
  }
}

class HorizontalIconListView extends StatefulWidget {
  @override
  _HorizontalIconListViewState createState() => _HorizontalIconListViewState();
}

class _HorizontalIconListViewState extends State<HorizontalIconListView> {
  double _scaleFactor = 1.0;

  final List<Map<String, dynamic>> items = [
    {
      "title": "Profile",
      "icon": Icons.person,
      "color": Colors.blue,
      "page": List_view_vertical(),
    },
    {
      "title": "Shop",
      "icon": Icons.store,
      "color": Colors.green,
      "page": GridData(),
    },
    {
      "title": "Logout",
      "icon": Icons.logout,
      "color": Colors.red,
      "page": LoginPage(),
    },
    {
      "title": "Home",
      "icon": Icons.home,
      "color": Colors.orange,
      "page": Utama(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => items[index]["page"]),
                );
              },
              onTapDown: (_) => setState(() => _scaleFactor = 1.0),
              onTapUp: (_) => setState(() => _scaleFactor = 1.2),
              onTapCancel: () => setState(() => _scaleFactor = 1.0),
              child: AnimatedScale(
                scale: _scaleFactor,
                duration: const Duration(milliseconds: 200),
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Container(
                    width: 120,
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          items[index]["icon"],
                          size: 50,
                          color: items[index]["color"],
                        ),
                        const SizedBox(height: 8),
                        Text(
                          items[index]["title"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
