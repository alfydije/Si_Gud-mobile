import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQr extends StatelessWidget {
  final String textQr;
  const GenerateQr({
    Key? key,
    required this.textQr,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Kode QR',
          style: TextStyle(
            color: Colors.black,
            fontSize: 15,
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
      body: Column(children: [
        Center(
          child: QrImageView(
            data: textQr,
            version: QrVersions.auto,
            size: 200,
          ),
        ),
        SizedBox(
          height: 9,
          ),
          Text(textQr),
      ]),
    );
  }
}