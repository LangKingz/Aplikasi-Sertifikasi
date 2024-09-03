import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InforPages extends StatelessWidget {
  const InforPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Text(
            'Aplikasi "siMahasiswa" adalah platform yang dirancang khusus untuk memudahkan pengelolaan data mahasiswa. Dengan antarmuka yang sederhana dan intuitif, aplikasi ini memungkinkan pengguna untuk mengakses, mengedit, dan menghapus informasi mahasiswa secara efisien. Pengguna dapat menambahkan data baru, melihat daftar mahasiswa yang ada, serta mengelola detail seperti NIM, nama, email, dan alamat. Selain itu, fitur popup yang muncul saat menekan dan menahan data mahasiswa memungkinkan pengeditan dan penghapusan data dengan mudah, memberikan fleksibilitas tinggi dalam pengelolaan informasi. Aplikasi ini sangat cocok digunakan oleh institusi pendidikan untuk memantau dan mengelola data mahasiswa mereka.'),
      ),
    );
  }
}
