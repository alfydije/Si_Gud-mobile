import 'package:flutter/material.dart';
import 'package:si_gud/barang_keluar/barangkeluar.dart';
import 'package:si_gud/barang_masuk/barangmasuk.dart';
import 'package:si_gud/data_barang/databarang.dart';
import 'package:si_gud/profil/profil.dart';
import 'package:si_gud/stok_barang/stokbarang.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Beranda',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true, // Judul berada di tengah
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        toolbarTextStyle: TextStyle(
          color: Colors.black,
        ), // Text style for the app bar title
        titleTextStyle: TextStyle(
          color: Colors.black,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ), // Text style for the app bar title
 ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 2, 31, 55),
        child: SingleChildScrollView(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 2, 31, 55),
                ),
                accountName: Text(
                  "Alfiyah Djayanti",
                  style: TextStyle(fontSize: 30),
                ),
                accountEmail: Text(
                  "Petugas",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text("Profil", style: TextStyle(color: Colors.white)),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Profil()),
                  );
                },
              ),
              ExpansionTile(
                leading: Icon(Icons.newspaper, color: Colors.white),
                title: Text("Laporan", style: TextStyle(color: Colors.white)),
                children: [
                  ListTile(
                    title: Text("Barang Masuk",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      // Navigate to "Barang Masuk" screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BarangMasukScreen()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Barang Keluar",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      // Navigate to "Barang Keluar" screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BarangKeluarScreen()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Data Barang",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      // Navigate to "Data Barang" screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DataBarangScreen()),
                      );
                    },
                  ),
                  ListTile(
                    title: Text("Stock Barang",
                        style: TextStyle(color: Colors.white)),
                    onTap: () {
                      // Navigate to "Data Barang" screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => StokBarangScreen()),
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 200),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text("Keluar", style: TextStyle(color: Colors.white)),
                onTap: () {
                  // Do something when the Logout item is tapped
                },
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 380,
                height: 200,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 2, 31, 55),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Inventory',
                            style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Gudang',
                            style: TextStyle(
                              fontSize: 45,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Image.asset(
                        'assets/home.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 100),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  // Your Wrap children
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 228, 228, 228),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/inventory.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Data Barang',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 228, 228, 228),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/stock.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Stok Barang',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 228, 228, 228),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/material.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Barang Masuk',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 180,
                    height: 180,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 228, 228, 228),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/outstock.png',
                          width: 100,
                          height: 100,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Barang Keluar',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Add more boxes as needed
                  
                ],
                
              ),
              
            )
            
          ],
        ),
      ),
    );
  }
}
