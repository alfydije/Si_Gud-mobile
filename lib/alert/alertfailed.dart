import 'package:flutter/material.dart';

class FailedsAlertScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: AlertDialog(
        title: Row(
          children: [
            Icon(
              Icons.close, // Close icon
              color: Colors.red, // Color of the icon
            ),
            SizedBox(width: 8), // Space between icon and text
            Text('Failed!'),
          ],
        ),
        content: Text('Data barang gagal di Perbaharui'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Close'),
          ),
        ],
      ),
    );
  }
}
