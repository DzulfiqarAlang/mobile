import 'package:flutter/material.dart';
import 'package:uas_mobile_programming/grid_data.dart';
import 'package:uas_mobile_programming/list_horizontal.dart';

void main() => runApp(Utama());

class Utama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'DMSerifText',
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            '@Muezzastore',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          backgroundColor: Colors.lightBlue,
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/background1.jpg'),
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  'Menyediakan berbagai macam keperluan olahraga',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 20),
                CustomOrderButton(
                  label: 'Shop',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GridData()),
                    );
                  },
                ),
                SizedBox(height: 16),
                CustomOrderButton(
                  label: 'Fitur-Fitur',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Horizontal()),
                    );
                  },
                ),
                SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomOrderButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  CustomOrderButton({required this.label, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.black,
        side: BorderSide(color: Colors.black, width: 1.5),
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Text(
        label,
        style: TextStyle(fontSize: 16),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Baru'),
      ),
      body: Center(
        child: Text(
          'Selamat Datang di Halaman Baru!',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
