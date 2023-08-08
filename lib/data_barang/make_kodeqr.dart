import 'package:flutter/material.dart';
import 'package:si_gud/data_barang/generate_qr.dart';

class MakeKodeQR extends StatefulWidget {
  const MakeKodeQR({Key? key}) : super(key: key);

  @override
  State<MakeKodeQR> createState() => _MakeKodeQRState();
}

class _MakeKodeQRState extends State<MakeKodeQR> {
  final textQrController = TextEditingController();
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
          'Make Kode QR',
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
        TextField(
          controller: textQrController,
          decoration: InputDecoration(
            label: const Text('Input kode barang '),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return GenerateQr(textQr: textQrController.text);
            }));
          },
          child: const Text('Generate Code'),
          style: ElevatedButton.styleFrom(
            primary: const Color.fromARGB(255, 6, 49, 84), 
            onPrimary: Colors.white, 
          ),
        )
      ]),
    );
  }
}
