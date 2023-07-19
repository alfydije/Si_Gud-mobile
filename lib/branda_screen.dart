import 'package:flutter/material.dart';
import 'package:si_gud/barang_keluar/barangkeluar.dart';
import 'package:si_gud/barang_masuk/barangmasuk.dart';
import 'package:si_gud/data_barang/databarang.dart';
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
                  // Do something when the Profil item is tapped
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
              SizedBox(
                    height: 250),
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
      body: Center(
        child: Text("Main Content"),
      ),
    );
  }
}


