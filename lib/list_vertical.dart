import 'package:flutter/material.dart';

class List_view_vertical extends StatelessWidget {
  const List_view_vertical({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Bio Data",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          const SizedBox(height: 20),
          CircleAvatar(
            radius: 70,
            backgroundColor: Colors.lightBlue,
            backgroundImage: const AssetImage('assets/foto_profil.jpg'),
            child: ClipOval(
              child: Image.asset(
                'assets/foto_profil.jpg',
                width: 140,
                height: 140,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20),
          _buildListTile(Icons.person, "Dzulfiqar Alang Setiawan"),
          _buildListTile(Icons.location_on, "Puri Delta Asri 1, Boja, Kendal",
              color: Colors.red),
          _buildListTile(Icons.phone, "083108857885"),
          _buildListTile(Icons.school, "Universitas PGRI Semarang",
              color: Colors.green),
          _buildListTile(Icons.auto_stories_outlined, "Informatika",
              color: Colors.orangeAccent),
          _buildListTile(Icons.email, "dzulfiqaralang1@gmail.com",
              color: Colors.teal),
          const SizedBox(height: 20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5.0),
            child: Text(
              "Tentang Saya",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Card(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: const Color.fromARGB(
                255, 240, 240, 240),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Perkenalkan nama saya Dzulfiqar Alang Setiawan, saya adalah mahasiswa semester 5 Program Studi Informatika di Universitas PGRI Semarang. Sebagai mahasiswa yang tertarik pada teknologi, saya selalu ingin mempelajari hal-hal baru di bidang pemrograman dan pengembangan perangkat lunak. Saya tertarik dengan pengembangan aplikasi yang inovatif serta penerapan teknologi untuk memecahkan berbagai permasalahan sehari-hari. Di luar dunia akademik, saya memiliki hobi bermain futsal dan game.',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListTile(IconData icon, String text,
      {Color color = Colors.black}) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(horizontal: 5.0),
      title: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: color),
            const SizedBox(width: 10),
            Text(text),
          ],
        ),
      ),
    );
  }
}
