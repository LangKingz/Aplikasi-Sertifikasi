import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class CreateData extends StatefulWidget {
  const CreateData({super.key});

  @override
  State<CreateData> createState() => _CreateDataState();
}

class _CreateDataState extends State<CreateData> {
  TextEditingController controllerNim = TextEditingController(text: "");
  TextEditingController controllerNama = TextEditingController(text: "");
  TextEditingController controllerEmail = TextEditingController(text: "");
  TextEditingController controllerAlamat = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    handleSubmit() async {
      var nim = controllerNim.text;
      var nama = controllerNama.text;
      var email = controllerEmail.text;
      var alamat = controllerAlamat.text;

      try {
        final String url =
            "https://api-sertifikasi.vercel.app/api/api/mahasiswa";
        final response = await http.post(
          Uri.parse(url),
          headers: {"Content-Type": "application/json"},
          body: jsonEncode({
            "nim": nim,
            "nama": nama,
            "email": email,
            "alamat": alamat,
          }),
        );

        if (response.statusCode == 200) {
          setState(() {
            controllerNim.clear();
            controllerNama.clear();
            controllerEmail.clear();
            controllerAlamat.clear();
          });

          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Data berhasil disimpan!')),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Data gagal disimpan!')),
          );
        }
      } catch (e) {
        print(e);
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Data'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: controllerNim,
              decoration: const InputDecoration(
                labelText: 'Nim',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controllerNama,
              decoration: const InputDecoration(
                labelText: 'Nama',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controllerEmail,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: controllerAlamat,
              decoration: const InputDecoration(
                labelText: 'Alamat',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton(
                onPressed: () => handleSubmit(),
                child: const Text('Submit',
                    style: TextStyle(
                      color: Colors.white,
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
