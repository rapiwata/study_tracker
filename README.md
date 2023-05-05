Soal-Soal Tugas Individu



Tugas 7:
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya

Jawab:
Stateless widget dan stateful widget adalah dua jenis widget pada framework Flutter, yang digunakan untuk membangun antarmuka pengguna pada aplikasi mobile.

Stateless widget adalah widget yang tidak memiliki keadaan atau state. Artinya, setiap kali widget di-build atau dirender, widget ini akan selalu menampilkan informasi yang sama. Stateless widget biasanya digunakan untuk menampilkan informasi statis seperti teks atau gambar, dan tidak memerlukan perubahan selama aplikasi berjalan.

Contohnya adalah widget Text, Image, dan Icon. Ketika Anda menggunakan widget Text untuk menampilkan teks statis pada layar, widget ini tidak memiliki keadaan atau data yang perlu dipertahankan, dan oleh karena itu, ia dianggap sebagai widget stateless.

Sementara itu, stateful widget adalah widget yang memiliki keadaan atau state. Widget ini dapat mempertahankan dan memperbarui data selama aplikasi berjalan. Misalnya, ketika pengguna memasukkan teks pada sebuah formulir, data input ini harus disimpan dan diperbarui di dalam widget sehingga dapat digunakan nanti.

Contohnya adalah widget Form, TextField, dan ListView. Ketika Anda menggunakan widget TextField untuk mengambil input teks dari pengguna, widget ini harus menyimpan nilai input saat ini dan diperbarui setiap kali pengguna mengetik. Oleh karena itu, TextField dianggap sebagai widget stateful.

Perbedaan utama antara kedua jenis widget ini adalah bahwa stateless widget tidak memiliki keadaan dan tidak dapat diperbarui selama aplikasi berjalan, sedangkan stateful widget memiliki keadaan dan dapat memperbarui data selama aplikasi berjalan. Stateful widget juga memiliki metode setState() yang memungkinkan Anda memperbarui keadaan widget dan membangun kembali widget, sedangkan stateless widget tidak memiliki metode ini.

2. Sebutkan seluruh widget yang kamu pakai di proyek kali ini dan jelaskan fungsinya masing-masing.

Jawab:
MaterialApp: widget ini digunakan sebagai root widget dari aplikasi Flutter. Digunakan untuk mengatur judul aplikasi dan tema global yang akan diterapkan ke seluruh widget.

Scaffold: widget ini digunakan sebagai kerangka utama dari halaman. Digunakan untuk menempatkan widget AppBar dan body.

AppBar: widget ini digunakan sebagai bagian atas halaman (header) dan menampilkan judul aplikasi serta tombol-tombol navigasi.

SingleChildScrollView: widget ini digunakan sebagai pembungkus untuk mengizinkan halaman di-scroll pada saat konten di dalamnya melebihi ukuran layar.

Padding: widget ini digunakan untuk memberikan jarak antara widget lain.

Column: widget ini digunakan untuk menempatkan widget lain secara vertikal.

GridView.count: widget ini digunakan untuk menampilkan widget dalam bentuk grid dengan jumlah kolom yang dapat disesuaikan.

Material: widget ini digunakan untuk memberikan warna latar belakang pada sebuah widget. Material adalah salah satu widget yang digunakan untuk menerapkan Material Design.

InkWell: widget ini digunakan untuk membuat area yang responsif terhadap sentuhan. Ketika area ini ditekan, akan memicu suatu tindakan atau peristiwa yang terkait.

Container: widget ini digunakan untuk menempatkan widget lain di dalamnya dan memberikan tampilan visual pada widget tersebut. Container dapat diatur berdasarkan properti seperti padding, margin, dan warna latar belakang.

Icon: widget ini digunakan untuk menampilkan ikon.

Text: widget ini digunakan untuk menampilkan teks.

SnackBar: widget ini digunakan untuk menampilkan pesan notifikasi singkat di bagian bawah layar.

3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).


Jawab :
-step pertama yakni mengintsall flutter terlebih dahulu 
-step kedua yaitu melakukan pengecekan dengan flutter doctor(disini kita bisa liat apakah semua kriteria sudah berjalan lancar atau tidak)
-step ketiga adalah membuat flutter app dengan membuat projek baru flutter pada IDE menggunakan flutter: new project
-setelah kita sudah selsai membuat projek maka akan ada beberpa kode dan program yang sudah terbuat dengan template yang diberikan flutter disinilah kita bisa memodifikasi dan melakukan kustomisasi pada kode tersebut
-Dalam file menu.dart, kita perlu menyalin dan menempelkan baris "import 'package:flutter/material.dart';" pada baris pertama dari file tersebut.
-Dalam file main.dart Import library 'package:money_tracker/menu.dart
-ubah warna pada primarySwatch yang terletak pada main.dart menjadi Colors.green
-Silakan menghapus title yang terdapat pada const MyHomePage(title: 'Flutter Demo Home Page') agar menjadi const MyHomePage()
-lakukan kustomisasi pada Widget build(BuildContext context) seperti tambahan judul, teks setelah di pencet dan beberapa grid buttons









