import 'package:flutter/material.dart';
import 'package:si_gud/alert/alertsuccess.dart';

class EditProfilPopup extends StatefulWidget {
  // Pass the current profile data to the pop-up
  String namaDepan;
  String namaBelakang;
  String email;
  String nomorTelfon;

  EditProfilPopup({
    required this.namaDepan,
    required this.namaBelakang,
    required this.email,
    required this.nomorTelfon,
  });

  @override
  _EditProfilPopupState createState() => _EditProfilPopupState();
}

class _EditProfilPopupState extends State<EditProfilPopup> {
  // Form controller untuk mengedit data profil
  late TextEditingController namaDepanController;
  late TextEditingController namaBelakangController;
  late TextEditingController emailController;
  late TextEditingController nomorTelfonController;

  @override
  void initState() {
    super.initState();
    // Inisialisasi form controller dengan data awal profil
    namaDepanController = TextEditingController(text: widget.namaDepan);
    namaBelakangController = TextEditingController(text: widget.namaBelakang);
    emailController = TextEditingController(text: widget.email);
    nomorTelfonController = TextEditingController(text: widget.nomorTelfon);
  }

  @override
  void dispose() {
    // Clean up the controllers when the widget is removed from the tree
    namaDepanController.dispose();
    namaBelakangController.dispose();
    emailController.dispose();
    nomorTelfonController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      title: Text('Edit Profil'),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: namaDepanController,
              decoration: InputDecoration(labelText: 'Nama Depan'),
            ),
            TextFormField(
              controller: namaBelakangController,
              decoration: InputDecoration(labelText: 'Nama Belakang'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: nomorTelfonController,
              decoration: InputDecoration(labelText: 'Nomor Telfon'),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            // Aksi saat tombol "Batal" ditekan
            Navigator.pop(context);
          },
          child: Text(
            'Batal',
            style: TextStyle(
              color:
                  Color.fromARGB(255, 2, 31, 55), // Warna teks tombol "Batal"
            ),
          ),
        ),
        InkWell(
          onTap: () {
            // Aksi saat tombol "Simpan" ditekan
            // Simpan data yang telah diubah ke variabel profil
            setState(() {
              widget.namaDepan = namaDepanController.text;
              widget.namaBelakang = namaBelakangController.text;
              widget.email = emailController.text;
              widget.nomorTelfon = nomorTelfonController.text;
            });
            // Tutup pop-up setelah data disimpan
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    Konfirmasi(), // Replace MyOtherPage with the desired page
              ),
            );
          },
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 2, 31, 55), // Warna tombol "Simpan"
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(
              'Simpan',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Konfirmasi extends StatelessWidget {
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
      content: Text('Apakah yakin untuk mengupdate informasi anda?'),
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
                builder: (context) => SuccessAlertScreen(), // Replace MyOtherPage with the desired page
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
