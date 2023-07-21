import 'package:flutter/material.dart';
import 'package:si_gud/profil/edit_profil.dart';

class Profil extends StatefulWidget {
  const Profil({Key? key}) : super(key: key);

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  // Contoh data profil
  String namaDepan = 'Alfiyah';
  String namaBelakang = 'Djayanti';
  String email = 'alfiyah@gmail.com';
  String nomorTelfon = '08123456789';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'Profil',
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
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Bagian atas dengan gambar profil dan data diri
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/profil.png', // Ganti dengan path gambar profil Anda
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Alfiyah Djayanti',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'alfiyah@gmail.com',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(height: 5),
                      Text(
                        '08123456789',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
              // Bagian bawah dengan data diri kebawah
              Text(
                'NAMA DEPAN:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Alfiyah',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'NAMA BELAKANG:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Djayanti',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'ALAMAT EMAIL:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'alfiyah@gmail.com',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'NOMOR TELFON:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                '08123456789',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'PETUGAS:',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Text(
                'Gudang A',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 170,
              ), // Jarak antara password dengan tombol login
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Membuka pop-up edit profil
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return EditProfilPopup(
                          namaDepan: namaDepan,
                          namaBelakang: namaBelakang,
                          email: email,
                          nomorTelfon: nomorTelfon,
                        );
                      },
                    );
                  },
                  child: Text(
                    'EDIT PROFIL',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 2, 31, 55), // Warna tombol
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10), // Radius tombol
                    ),
                    minimumSize: Size(300, 50), // Tinggi dan lebar tombol
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
