import 'package:flutter/material.dart';

class StokBarangScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back button pressed
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Stok Barang',
          style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        centerTitle: true, // Judul berada di tengah
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 168, 180, 226)),
        automaticallyImplyLeading: false, // Menyembunyikan tombol kembali
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.all(15),
        children: [
          // First Box Decoration
          Container(
            width: 164,
            height: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Hardisk.png",
                      height: 136,
                      width: 96,
                    ),
                  ),
                  Text(
                    "Hardisk",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "07 Tersedia",
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 96, 154, 98),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Box Decoration
          Container(
            width: 164,
            height: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Hardisk.png",
                      height: 136,
                      width: 96,
                    ),
                  ),
                  Text(
                    "Lampu Led",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Tidak Tersedia",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 245, 134, 124),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // three Box Decoration
          Container(
            width: 164,
            height: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Hardisk.png",
                      height: 136,
                      width: 96,
                    ),
                  ),
                  Text(
                    "CPU",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "05 Tersedia",
                    style: TextStyle(
                      fontSize: 12,
                      color: const Color.fromARGB(255, 96, 154, 98),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Second Box Decoration
          Container(
            width: 164,
            height: 222,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 10,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/Hardisk.png",
                      height: 136,
                      width: 96,
                    ),
                  ),
                  Text(
                    "VGA Card",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    "Tidak Tersedia",
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 245, 134, 124),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
