import 'package:flutter/material.dart';

class DetailData extends StatelessWidget {
  final String nama;
  final String alamat;
  final String email;
  final String nim;

  const DetailData({
    super.key,
    required this.nama,
    required this.alamat,
    required this.email,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Data'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              // margin: EdgeInsets.all(10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment,
                children: [
                  Text(
                    "Nim : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    nim,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              // margin: EdgeInsets.all(10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment,
                children: [
                  Text(
                    "Nama : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    nama,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              // margin: EdgeInsets.all(10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment,
                children: [
                  Text(
                    "Email : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    email,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(10.0),
              // margin: EdgeInsets.all(10.0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment,
                children: [
                  Text(
                    "Alamat : ",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    alamat,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
