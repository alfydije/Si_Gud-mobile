import 'package:flutter/material.dart';

class BarangKeluarScreen extends StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Barang Keluar',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true, // Judul berada di tengah
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 168, 180, 226)),
        toolbarTextStyle: TextStyle(
          color: Colors.black,
        ), // Text style for the app bar title
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ), // Text style for the app bar title
      ),
    );
  }
}