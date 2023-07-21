import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
        ElevatedButton(
          onPressed: () {
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
          },
          style: ElevatedButton.styleFrom(
            primary: Color.fromARGB(255, 2, 31, 55), // Warna tombol "Simpan"
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Text(
            'Simpan',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
