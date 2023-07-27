import 'package:flutter/material.dart';

class DetailBarangScreen extends StatelessWidget {
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
          'Detail Barang',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true, // Judul berada di tengah
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 168, 180, 226),
        ),
        automaticallyImplyLeading: false, // Menyembunyikan tombol kembali
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: ListView(
            shrinkWrap: true,
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Image.asset(
                  "assets/Hardisk.png",
                  height: 300,
                  width: 400,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        offset: Offset(0,3),
                      ),
                    ]),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Nama Barang : ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                  "Hardisk",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: const Color.fromARGB(255, 6, 49, 84),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Kode Barang : ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                  "BRG01",
                                  style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 6, 49, 84),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Stok Barang : ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                  "05",
                                  style: TextStyle(
                                  fontSize: 20,
                                  color: const Color.fromARGB(255, 6, 49, 84),
                                  ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Lokasi Barang : ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                  "Gudang A",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: const Color.fromARGB(255, 6, 49, 84),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                    Padding(
                          padding: EdgeInsets.symmetric(vertical: 10,),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Kondisi Barang : ",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    ),
                                ),
                                Text(
                                  "Baik",
                                  style: TextStyle(
                                    fontSize: 20, 
                                    color: const Color.fromARGB(255, 6, 49, 84),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                    ),
                  ]),
                ),
              ),
            ]
          ),
        ),
      ),
    );
  }
}
