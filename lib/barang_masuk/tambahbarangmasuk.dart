import 'package:flutter/material.dart';

class TambahBarangScreen extends StatefulWidget {
  // Pass the current profile data to the screen
  String namaBarang;
  String stokBarang;
  String kodeBarang;
  String fotoBarang;

  TambahBarangScreen({
    required this.namaBarang,
    required this.stokBarang,
    required this.kodeBarang,
    required this.fotoBarang,
  });

  @override
  _TambahBarangScreenState createState() => _TambahBarangScreenState();
}

class _TambahBarangScreenState extends State<TambahBarangScreen> {
  // Form controller for editing profile data
  late TextEditingController namaBarangController;
  late TextEditingController stokBarangController;
  late TextEditingController kodeBarangController;
  late TextEditingController fotoBarangController;
  late TextEditingController tanggalMasukController;
  late TextEditingController jumlahMasukController;

  @override
  void initState() {
    super.initState();
    // Initialize form controllers with the initial profile data
    namaBarangController = TextEditingController(text: widget.namaBarang);
    stokBarangController = TextEditingController(text: widget.stokBarang);
    kodeBarangController = TextEditingController(text: widget.kodeBarang);
    fotoBarangController = TextEditingController(text: widget.fotoBarang);
    tanggalMasukController = TextEditingController();
    jumlahMasukController = TextEditingController();
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is removed from the tree
    namaBarangController.dispose();
    stokBarangController.dispose();
    kodeBarangController.dispose();
    fotoBarangController.dispose();
    super.dispose();
  }

  void _onTambahButtonPressed() {
    // Get the values from the text controllers
    String namaBarang = namaBarangController.text;
    String stokBarang = stokBarangController.text;
    String kodeBarang = kodeBarangController.text;
    String fotoBarang = fotoBarangController.text;
   

    // Do whatever you want with the data, e.g., save to database or send to a server

    // Close the screen after processing the data
    Navigator.pop(context);
  }

  // ... (kode sebelumnya)

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Tambah Barang Masuk',
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
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Ubah warna kotak menjadi abu-abu
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Nama Barang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: namaBarangController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan nama barang',
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Ubah warna kotak menjadi abu-abu
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Stok Barang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: stokBarangController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan stok barang',
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            // Lanjutkan untuk kode-kode Container lainnya dengan gaya yang sama
            // ...
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Ubah warna kotak menjadi abu-abu
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Kode Barang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: stokBarangController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan kode barang',
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300], // Ubah warna kotak menjadi abu-abu
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Text(
                    'Foto Barang',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextFormField(
                    controller: stokBarangController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Masukkan foto barang',
                    ),
                  ),
                  SizedBox(height: 10),
                ],
                
              ),
            ),
            SizedBox(height: 50),
            Center(
              child: ElevatedButton(
                onPressed: _onTambahButtonPressed,
                style: ElevatedButton.styleFrom(
                  primary: Color.fromARGB(255, 2, 31, 55),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  minimumSize: Size(200, 50), // Ubah ukuran tombol sesuai kebutuhan (panjang x tinggi)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: const Text(
                    "Tambah",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}