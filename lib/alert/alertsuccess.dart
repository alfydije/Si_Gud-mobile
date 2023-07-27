import 'package:flutter/material.dart';
import 'package:si_gud/profil/profil.dart';


class SuccessAlertScreen extends StatelessWidget {
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
      content: Text('Data berhasil di perbaharui'),
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
                builder: (context) => Profil(), // Replace MyOtherPage with the desired page
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
