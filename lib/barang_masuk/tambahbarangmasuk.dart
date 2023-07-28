import 'package:flutter/material.dart';
import 'package:si_gud/barang_masuk/barangmasuk.dart';

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
            Text(
              'Nama Barang',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: namaBarangController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan nama barang',
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Stok Barang',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: stokBarangController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan stok barang',
                ),
              ),
            ),
            // Continue for other fields...
            SizedBox(height: 20),
            Text(
              'Kode Barang',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: kodeBarangController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan kode barang',
                ),
              ),
            ),
            // Continue for other fields...
            SizedBox(height: 20),
            Text(
              'Foto Barang',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: fotoBarangController,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Masukkan foto barang',
                ),
              ),
            ),
            SizedBox(height: 30),
Center(
  child: ElevatedButton(
    onPressed: () {
      // Perform any necessary operations before navigating to the next screen
      
      // Example: Getting the values from the text controllers
      String namaBarang = namaBarangController.text;
      String stokBarang = stokBarangController.text;
      String kodeBarang = kodeBarangController.text;
      String fotoBarang = fotoBarangController.text;

      // Navigate to the next screen and pass data using Navigator.push
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => KonfirmasiTmbhBrg(
          ),
        ),
      );
    },
    style: ElevatedButton.styleFrom(
      primary: Color.fromARGB(255, 2, 31, 55),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
      minimumSize: Size(200, 50),
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

class KonfirmasiTmbhBrg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          SizedBox(
            width: 10,
            height: 10,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                color: Colors.transparent, // Set the background color to transparent
              ),
            ),
          ), // Space between icon and text
        ],
      ),
      content: Text('Apakah yakin untuk menambahkan data barang?'),
      actions: [
        ElevatedButton(
          onPressed: () {
          },
          style: ElevatedButton.styleFrom(
            primary: Color(0XFFAF0505), // Warna tombol "Tidak"
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: Size(100, 33), // Set the width and height of the button
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Tidak",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(width: 16), // Space between buttons
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessTmbhBrg(), // Replace MyOtherPage with the desired page
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 2, 31, 55), // Warna tombol "Close"
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: Size(100, 33), // Set the width and height of the button
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Ya",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class SuccessTmbhBrg extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        children: [
          SizedBox(
            width: 40,
            height: 20,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: Container(
                color: Colors.transparent, // Set the background color to transparent
              ),
            ),
          ), // Space between icon and text
        ],
      ),
      content: Text('Data barang berhasil di tambahkan'),
      actions: [
        // ElevatedButton(
        //   onPressed: () {
        //   },
        //   style: ElevatedButton.styleFrom(
        //     primary: Color(0XFFAF0505), // Warna tombol "Tidak"
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(8),
        //     ),
        //     minimumSize: Size(100, 33), // Set the width and height of the button
        //   ),
        //   child: Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child: const Text(
        //       "Tidak",
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 16,
        //       ),
        //     ),
        //   ),
        // ),
        SizedBox(width: 16), // Space between buttons
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BarangMasukScreen(), // Replace MyOtherPage with the desired page
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 2, 31, 55), // Warna tombol "Close"
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: Size(100, 33), // Set the width and height of the button
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: const Text(
              "Oke",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
