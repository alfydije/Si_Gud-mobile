import 'package:flutter/material.dart';

class LaporanRekapanScreen extends StatelessWidget {
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
          'Laporan Rekapan',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color.fromARGB(255, 168, 180, 226),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: _buildTotalBox(
                title: "Total Barang Masuk",
                total: "157",
                imageAsset: "assets/bmasuk.png",
              ),
            ),
            SizedBox(height: 10), // Vertical spacing of 10
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: _buildTotalBox(
                title: "Total Barang Keluar",
                total: "124",
                imageAsset: "assets/bkeluar.png",
              ),
            ),
            SizedBox(height: 10), // Vertical spacing of 10
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: _buildTotalBox(
                title: "Total Stok Barang",
                total: "57",
                imageAsset: "assets/stok.png",
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTotalBox({
    required String title,
    required String total,
    required String imageAsset,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          child: Container(
            width: 700,
            height: 117,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border(
                left: BorderSide(
                  color: const Color.fromARGB(255, 72, 95, 121),
                  width: 5.0,
                ),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20, top: 15, bottom: 5),
                        child: Text(
                          title,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 40),
                        child: Text(
                          total,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  // Added Expanded widget
                  child: Container(
                    alignment:
                        Alignment.centerRight, // Align the image to the right
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        imageAsset,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
            height: 10), // Add spacing between the total box and the button
        Container(
          width: 700,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 2),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Cetak",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
