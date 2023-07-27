import 'package:flutter/material.dart';
import 'package:si_gud/barang_masuk/tambahbarangmasuk.dart';

class BarangMasukScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Barang Masuk',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color.fromARGB(255, 168, 180, 226)),
        toolbarTextStyle: TextStyle(
          color: Colors.black,
        ),
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            buildItem(
              'CENTRAL PROCESSING UNIT',
              'Jumlah Stok',
              '05',
              'assets/CPU.png',
            ),
            buildItem(
              'HARDISK',
              'Jumlah Stok',
              '0',
              'assets/Hardisk.png',
            ),
            buildItem(
              'LED',
              'Jumlah Stok',
              '05',
              'assets/Led.png',
            ),
            buildItem(
              'VGA CARD',
              'Jumlah Stok',
              '0',
              'assets/VGA.png',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the TambahBarangScreen when the plus sign is clicked
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TambahBarangScreen(
                fotoBarang: '',
                kodeBarang: '',
                stokBarang: '',
                namaBarang: '',
              ),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Color.fromARGB(255, 2, 31, 55),
      ),
    );
  }

  Widget buildItem(
      String title, String subTitle, String stock, String imagePath) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Container(
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
        child: Row(
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                alignment: Alignment.center,
                child: Image.asset(
                  imagePath,
                  height: 100,
                  width: 80,
                ),
              ),
            ),
            Expanded( // Wrap the Row with Expanded to avoid overflow
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      stock,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// The TambahBarangScreen class remains unchanged as before
