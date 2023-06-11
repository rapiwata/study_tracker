Soal-Soal Tugas Individu



Tugas 7:
1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya

Jawab:
Stateless widget dan stateful widget adalah dua jenis widget pada framework Flutter, yang digunakan untuk membangun antarmuka pengguna pada aplikasi mobile.

Stateless widget adalah widget yang tidak memiliki keadaan atau state. Artinya, setiap kali widget di-build atau dirender, widget ini akan selalu menampilkan informasi yang sama. Stateless widget biasanya digunakan untuk menampilkan informasi statis seperti teks atau gambar, dan tidak memerlukan perubahan selama aplikasi berjalan.

Contohnya adalah widget Text, Image, dan Icon. Ketika menggunakan widget Text untuk menampilkan teks statis pada layar, widget ini tidak memiliki keadaan atau data yang perlu dipertahankan, dan oleh karena itu, ia dianggap sebagai widget stateless.

Sementara itu, stateful widget adalah widget yang memiliki keadaan atau state. Widget ini dapat mempertahankan dan memperbarui data selama aplikasi berjalan. Misalnya, ketika pengguna memasukkan teks pada sebuah formulir, data input ini harus disimpan dan diperbarui di dalam widget sehingga dapat digunakan nanti.

Contohnya adalah widget Form, TextField, dan ListView. Ketika menggunakan widget TextField untuk mengambil input teks dari pengguna, widget ini harus menyimpan nilai input saat ini dan diperbarui setiap kali pengguna mengetik. Oleh karena itu, TextField dianggap sebagai widget stateful.

Perbedaan utama antara kedua jenis widget ini adalah bahwa stateless widget tidak memiliki keadaan dan tidak dapat diperbarui selama aplikasi berjalan, sedangkan stateful widget memiliki keadaan dan dapat memperbarui data selama aplikasi berjalan. Stateful widget juga memiliki metode setState() yang memungkinkan memperbarui keadaan widget dan membangun kembali widget, sedangkan stateless widget tidak memiliki metode ini.

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




Tugas 8


Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Jawab:
Dalam konteks Flutter, Navigator adalah sebuah kelas yang digunakan untuk mengelola perpindahan antar halaman atau "routes" dalam aplikasi. Navigator memungkinkan untuk mengganti halaman yang ditampilkan di layar dengan halaman baru, serta mengatur tumpukan (stack) halaman untuk memungkinkan navigasi mundur.

Berikut adalah langkah-langkah umum untuk menggunakan Navigator dalam Flutter:

1. Tentukan halaman-halaman yang akan ditampilkan dalam aplikasi. Setiap halaman biasanya merupakan widget StatelessWidget atau StatefulWidget.

2. Pada halaman utama (biasanya disebut sebagai root page), inisialisasikan Navigator dengan menambahkan Navigator widget ke dalam widget tree. Hal ini biasanya dilakukan di dalam widget build() dari halaman utama.

   ```dart
   Widget build(BuildContext context) {
     return Navigator(
       initialRoute: '/',
       onGenerateRoute: (RouteSettings settings) {
         // Definisikan rute untuk setiap halaman
         // Misalnya:
         if (settings.name == '/') {
           return MaterialPageRoute(builder: (context) => HomePage());
         } else if (settings.name == '/detail') {
           return MaterialPageRoute(builder: (context) => DetailPage());
         }
         // ...
       },
     );
   }
   ```

   Dalam contoh di atas, Navigator diinisialisasi dengan rute awal ('/') dan onGenerateRoute, yang berfungsi untuk menghubungkan setiap rute dengan widget halaman yang sesuai.

3. Di halaman-halaman atau widget mana pun di dalam aplikasi , dapat menggunakan Navigator untuk memicu perpindahan ke halaman baru. Biasanya ini dilakukan melalui fungsi Navigator.push().

   ```dart
   // Contoh penggunaan Navigator.push() di suatu tombol
   RaisedButton(
     onPressed: () {
       Navigator.pushNamed(context, '/detail');
     },
     child: Text('Pindah ke Halaman Detail'),
   )
   ```

   Dalam contoh di atas, ketika tombol ditekan, fungsi Navigator.pushNamed() digunakan untuk memicu perpindahan ke halaman dengan rute '/detail'.

4. Di halaman baru, Kita juga dapat menggunakan Navigator untuk kembali ke halaman sebelumnya melalui fungsi Navigator.pop(). Fungsi ini biasanya dipanggil saat suatu aksi "kembali" dilakukan, seperti menekan tombol "Kembali" di AppBar.

   ```dart
   // Contoh penggunaan Navigator.pop() di AppBar
   AppBar(
     title: Text('Halaman Detail'),
     leading: IconButton(
       icon: Icon(Icons.arrow_back),
       onPressed: () {
         Navigator.pop(context);
       },
     ),
   )
   ```

   Dalam contoh di atas, ketika tombol "Kembali" ditekan, fungsi Navigator.pop() dipanggil untuk kembali ke halaman sebelumnya dalam tumpukan Navigator.

Dengan menggunakan Navigator,  dapat mengatur navigasi antar halaman dengan mudah dalam aplikasi Flutter. dapat menentukan tumpukan halaman dan mengontrol aliran navigasi sesuai dengan kebutuhan aplikasi .




Sebutkan dan jelaskan tipe routing yang disediakan oleh Navigator.

Jawab:
Navigator dalam Flutter menyediakan beberapa tipe routing untuk mengelola navigasi antar halaman. Berikut adalah beberapa tipe routing yang umum digunakan:

1. **MaterialPageRoute**: Ini adalah tipe routing yang digunakan dalam aplikasi Flutter dengan desain material. MaterialPageRoute menambahkan animasi transisi bawaan saat perpindahan halaman, seperti slide horizontal atau vertical. Hal ini sesuai dengan panduan desain material yang disediakan oleh Google. Contoh penggunaan MaterialPageRoute:

   ```dart
   Navigator.push(
     context,
     MaterialPageRoute(builder: (context) => DetailPage()),
   );
   ```

2. **CupertinoPageRoute**: Ini adalah tipe routing yang digunakan dalam aplikasi Flutter dengan desain iOS (Cupertino). Jika ingin memberikan pengalaman navigasi yang konsisten dengan iOS, dapat menggunakan CupertinoPageRoute. CupertinoPageRoute menambahkan animasi transisi khas iOS saat perpindahan halaman. Contoh penggunaan CupertinoPageRoute:

   ```dart
   Navigator.push(
     context,
     CupertinoPageRoute(builder: (context) => DetailPage()),
   );
   ```

3. **PageRouteBuilder**: Jika ingin mengontrol animasi transisi dengan lebih rinci, dapat menggunakan PageRouteBuilder. Dengan PageRouteBuilder, dapat menentukan animasi transisi kustom, durasi, dan banyak lagi. Ini memberikan fleksibilitas yang lebih besar dalam mengatur tampilan halaman. Contoh penggunaan PageRouteBuilder:

   ```dart
   Navigator.push(
     context,
     PageRouteBuilder(
       transitionDuration: Duration(seconds: 1),
       pageBuilder: (context, animation, secondaryAnimation) => DetailPage(),
       transitionsBuilder: (context, animation, secondaryAnimation, child) {
         return FadeTransition(
           opacity: animation,
           child: child,
         );
       },
     ),
   );
   ```

4. **Named routes**: Selain menggunakan tipe routing langsung seperti MaterialPageRoute atau CupertinoPageRoute, Navigator juga mendukung penggunaan named routes. Named routes memungkinkan  memberikan nama unik untuk setiap halaman dan memanggilnya menggunakan nama tersebut. Ini memudahkan navigasi antar halaman dan memisahkan logika rute dari widget yang memicu perpindahan halaman. Contoh penggunaan named routes:

   ```dart
   // Pada saat inisialisasi Navigator
   initialRoute: '/',
   onGenerateRoute: (RouteSettings settings) {
     if (settings.name == '/') {
       return MaterialPageRoute(builder: (context) => HomePage());
     } else if (settings.name == '/detail') {
       return MaterialPageRoute(builder: (context) => DetailPage());
     }
     // ...
   }

   // Memanggil halaman dengan named route
   Navigator.pushNamed(context, '/detail');
   ```

   Dalam contoh di atas, menentukan rute menggunakan named routes dengan menetapkan initialRoute dan mengimplementasikan onGenerateRoute. Kemudian, dapat memanggil halaman dengan menggunakan Navigator.pushNamed().

Dengan tipe-tipe routing yang disediakan oleh Navigator, dapat mengatur navigasi antar halaman dengan berbagai macam animasi dan gaya yang sesuai dengan desain aplikasi , baik itu desain material atau desain iOS.


Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

Jawab:
Berikut adalah beberapa contoh jenis-jenis event yang ada pada Flutter:

1. **onPressed**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika tombol ditekan.

   Contoh:
   ```dart
   RaisedButton(
     onPressed: () {
       // Tindakan yang akan dijalankan ketika tombol ditekan
     },
     child: Text('Tombol'),
   )
   ```

2. **onChanged**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika nilai suatu input berubah, misalnya pada TextField.

   Contoh:
   ```dart
   TextField(
     onChanged: (value) {
       // Tindakan yang akan dijalankan ketika nilai input berubah
     },
   )
   ```

3. **onTap**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika sebuah widget ditekan atau diklik.

   Contoh:
   ```dart
   GestureDetector(
     onTap: () {
       // Tindakan yang akan dijalankan ketika widget ditekan
     },
     child: Container(
       child: Text('Tekan Saya'),
     ),
   )
   ```

4. **onSubmitted**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika suatu input, seperti TextField, dikirim atau disubmit.

   Contoh:
   ```dart
   TextField(
     onSubmitted: (value) {
       // Tindakan yang akan dijalankan ketika input dikirim/disubmit
     },
   )
   ```

5. **onScroll**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika pengguna menggulirkan sebuah widget, misalnya ListView.

   Contoh:
   ```dart
   ListView(
     onScroll: (scrollDetails) {
       // Tindakan yang akan dijalankan ketika pengguna menggulirkan ListView
     },
     // ...
   )
   ```

6. **onLongPress**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika pengguna menahan tekanan lama pada suatu widget.

   Contoh:
   ```dart
   GestureDetector(
     onLongPress: () {
       // Tindakan yang akan dijalankan ketika pengguna menahan tekanan lama
     },
     child: Container(
       child: Text('Tahan Saya'),
     ),
   )
   ```

7. **onDoubleTap**: Digunakan untuk menentukan tindakan yang akan dijalankan ketika pengguna melakukan dua kali ketukan pada suatu widget.

   Contoh:
   ```dart
   GestureDetector(
     onDoubleTap: () {
       // Tindakan yang akan dijalankan ketika pengguna melakukan dua kali ketukan
     },
     child: Container(
       child: Text('Ketuk Dua Kali'),
     ),
   )
   ```

Itu hanya beberapa contoh jenis-jenis event yang umum digunakan dalam Flutter. Terdapat juga banyak jenis event lainnya yang tersedia sesuai dengan kebutuhan aplikasi .


Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Jawab:
Berikut ini adalah penjelasan dan fungsi dari setiap widget yang digunakan dalam tugas ini:

1. Scaffold: Menyediakan struktur dasar untuk mengimplementasikan desain visual desain material.
2. AppBar: Menyediakan toolbar atau bilah aplikasi di bagian atas tampilan.
3. Text: Menampilkan teks di layar.
4. SingleChildScrollView: Menyediakan perilaku scroll untuk widget turunannya saat tidak ada cukup ruang untuk menampilkannya.
5. Padding, Column, Icon, InputBorder, TextButton, ListView, Center, Container, dan lain-lain digunakan untuk mengatur tata letak dan tampilan dari elemen-elemen dalam halaman form.
6. Drawer: Membuat tampilan drawer yang dapat digeser dari sisi kiri layar. Drawer biasanya berisi daftar menu atau navigasi yang dapat dipilih oleh pengguna.
7. DrawerMenu: Merujuk ke kelas DrawerMenu yang didefinisikan di file terpisah. Digunakan untuk menampilkan drawer di bagian kiri layar.
8. ListTile: Menampilkan item daftar yang berinteraksi dengan pengguna. Digunakan untuk menampilkan item menu dalam drawer. Item menu tersebut memiliki teks judul "Menu" dan akan menavigasikan pengguna ke halaman utama ketika ditekan.
9. Form: Membuat bentuk form yang dapat divalidasi. Digunakan sebagai wadah untuk beberapa TextFormField dan tombol "Tambah".
10. PointGuard: Mengatur serangan tim dengan mengontrol bola dan mengoperkannya ke pemain yang tepat di saat yang tepat untuk mencetak skor.
11. TextFormField: Mengambil input teks dari pengguna dalam bentuk field/form. Digunakan empat kali untuk menerima input dari pengguna untuk nama tugas, nama mata kuliah, persentase progress, dan deskripsi tugas.
12. TextButton: Membuat tombol teks yang merespons ketika ditekan. Digunakan untuk membuat tombol "Tambah" dengan gaya tampilan dan perilaku yang ditentukan.
13. Dialog: Membuat dialog yang muncul di atas halaman saat ini. Digunakan untuk menampilkan dialog dengan informasi data yang diisi dalam form.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

Jawab:
1. Membuat folder baru bernama "widgets" di dalam folder "lib".
2. Membuat file baru dengan nama "drawer.dart" di dalam folder "lib/widgets".
3. Mengimpor file "menu.dart" (aplikasi menu) dan "material.dart".
4. Membuat class "DrawerMenu" yang di-extend dari StatelessWidget.
5. Membuat widget "Drawer" dari class tersebut.
6. Di dalam widget "Drawer", membuat widget "Column".
7. Di dalam widget "Column", membuat widget "ListTile" untuk merepresentasikan item menu.
8. Di dalam item menu, menambahkan properti "onTap" untuk mengganti halaman saat ini dengan halaman "MyHomePage" (menu) menggunakan "Navigator.pushReplacement", ketika item tersebut ditekan (tapped).
9. Membuka file "menu.dart".
10. Menambahkan "drawer: const DrawerMenu()" sebelum "body" untuk menambahkan drawer pada halaman menu.
11. Menambahkan halaman form.
12. Membuat file baru dengan nama "form.dart" di dalam folder "lib/pages".
13. Mengimpor "drawer.dart", "material.dart", dan "services.dart".
14. Membuat class "MyFormPage" yang di-extend dari "StatefulWidget".
15. Membuat widget "Scaffold" sebagai struktur tata letak dasar untuk halaman form.
16. Di dalam widget tersebut, membuat widget "AppBar" yang menampilkan judul 'Form'.
17. Di dalam widget "Scaffold", juga membuat widget "drawer" yang merepresentasikan "DrawerMenu()" yang telah dibuat sebelumnya.
18. Membuat body "Scaffold".
19. Menambahkan "form key" sebagai handle dari state, validasi, dan penyimpanan form.
20. Membuat widget "SingleChildScrollView" sebagai child dari widget "Form".
21. Membuat widget "Container" sebagai child dari widget "SingleChildScrollView".
22. Menambahkan padding pada widget "Container" sebesar 20 piksel.
23. Membuat widget "Column" sebagai child dari widget "Container".
24. Membuat widget "TextFormField" yang dibungkus oleh "Padding" sebagai salah satu children dari widget "Column" dan menambahkan variabel "_namaTugas" sebagai placeholder dari nilai yang diketik pada "TextFormField".
25. Membuat widget "TextFormField" yang dibungkus oleh "Padding" sebagai salah satu children dari widget "Column" dan menambahkan variabel "_namaMatkul" sebagai placeholder dari nilai yang diketik pada "TextFormField".
26. Membuat widget "TextFormField" yang dibungkus oleh "Padding" sebagai salah satu children dari widget "Column" dan menambahkan variabel "persentaseProgress" sebagai placeholder dari nilai yang diketik pada "TextFormField".
27. Membuat widget "TextFormField" yang dibungkus oleh "Padding" sebagai salah satu children dari widget "Column" dan menambahkan variabel "_deskripsiTugas" sebagai placeholder dari nilai yang diketik pada "TextFormField".
28. Membuat tombol yang akan menyimpan data yang diinputkan pada setiap elemen input.
29. Menambahkan fungsi "showDialog()" pada bagian "onPressed()" dan menampilkan widget "Dialog" dalam fungsi tersebut.
30. Menambahkan informasi yang didapat dari form menggunakan widget "Text" dan melakukan string interpolation untuk menyajikan keterangan data






Tugas 9:


Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Jawab:

Ya, mungkin bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. JSON (JavaScript Object Notation) adalah format data yang dapat dibaca oleh banyak bahasa pemrograman, termasuk JavaScript. Dapat menggunakan fungsi-fungsi pemrograman yang disediakan oleh bahasa pemrograman untuk membaca dan memanipulasi data JSON.

Jika hanya perlu melakukan pengambilan data JSON secara sederhana, tanpa memerlukan pemrosesan atau analisis yang kompleks, tidak perlu membuat model terlebih dahulu. Bisa menggunakan fungsi bawaan atau pustaka JSON yang disediakan oleh bahasa pemrograman untuk membaca data JSON langsung.

Namun, jika perlu melakukan pemrosesan atau analisis data JSON yang lebih kompleks, membuat model atau menggunakan pustaka yang spesifik untuk JSON bisa menjadi lebih baik. Misalnya, jika ingin mengubah struktur data JSON menjadi objek atau model yang lebih mudah dioperasikan atau menerapkan algoritma pemrosesan khusus pada data JSON, membuat model atau menggunakan pustaka yang dioptimalkan untuk tugas tersebut bisa menjadi pilihan yang lebih baik.

Secara umum, penting untuk mempertimbangkan kompleksitas tugas yang ingin dilakukan dengan data JSON dan memilih pendekatan yang paling sesuai untuk kebutuhan tersebut.


Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

Jawab:
Ambil data JSON: Ambil data JSON dari sumbernya, seperti API atau berkas JSON. Gunakan metode atau pustaka yang tersedia dalam bahasa pemrograman yang digunakan untuk mengambil data JSON tersebut. Misalnya, dalam bahasa Dart yang digunakan dalam Flutter, kita dapat menggunakan pustaka http atau dio untuk melakukan permintaan HTTP dan mendapatkan respons JSON.

Parsing data JSON: Setelah mendapatkan respons JSON, langkah selanjutnya adalah mem-parse (mengurai) data JSON ke dalam struktur yang dapat digunakan oleh Flutter. Gunakan metode jsonDecode() dari pustaka dart:convert untuk mengubah respons JSON menjadi objek Dart.

Model Data: Buat model data di Dart untuk mewakili struktur data yang akan digunakan. Model ini membantu mengorganisir dan mengelola data. kita dapat membuat kelas Dart dengan properti yang sesuai dengan struktur data JSON yang ingin diambil.

Mengisi Model Data: Isi model data kita dengan data yang di-parse dari JSON. Ambil nilai-nilai dari objek JSON dan masukkan ke dalam objek model data menggunakan sintaks Dart.

Menampilkan Data pada Flutter: Gunakan model data untuk menampilkan data pada antarmuka pengguna (UI) Flutter. Gunakan widget-widget Flutter seperti ListView, GridView, atau Column untuk menampilkan data dalam daftar atau tata letak yang sesuai. Akses properti model data untuk menampilkan nilai-nilai yang diinginkan.

Mengelola Tampilan dan Pembaruan: Jika data JSON yang diambil bersifat dinamis dan dapat berubah, kelola pembaruan tampilan saat data berubah. Gunakan StatefulWidget dan State untuk mengelola pembaruan tampilan secara responsif saat data JSON berubah.


Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

Jawab:
Desain antarmuka pengguna (UI) Flutter: Mulailah dengan merancang antarmuka pengguna di Flutter untuk memungkinkan pengguna memasukkan data akun, seperti nama pengguna (username) dan kata sandi (password). kita dapat menggunakan widget-widget Flutter seperti TextFormField untuk mengumpulkan input dari pengguna.

Kirim permintaan autentikasi dari Flutter ke Django: Setelah pengguna memasukkan data akun, kita perlu mengirim permintaan autentikasi dari aplikasi Flutter ke Django. kita dapat menggunakan pustaka http atau dio dalam Flutter untuk mengirim permintaan HTTP ke backend Django kita.

Terima dan proses permintaan autentikasi di Django: Pada sisi backend, kita perlu mengonfigurasi Django untuk menerima dan memproses permintaan autentikasi. kita dapat menggunakan Django's built-in Authentication framework atau pustaka pihak ketiga seperti Django Rest Framework untuk mengelola proses autentikasi. Django akan memeriksa data akun yang diterima dan memvalidasi keasliannya dengan basis data atau sumber autentikasi yang kita gunakan.

Autentikasi berhasil di Django: Jika data akun yang dikirim oleh Flutter valid dan sesuai dengan data di backend Django, Django akan mengirimkan respons yang mengindikasikan autentikasi berhasil. Respons ini biasanya berupa token akses atau sesi yang akan digunakan untuk otorisasi pada permintaan-permintaan berikutnya.

Tanggapi respons autentikasi di Flutter: Setelah menerima respons autentikasi dari Django, aplikasi Flutter perlu menangani respons tersebut. kita dapat mem-parse respons JSON yang diterima dari backend dan melakukan penanganan yang sesuai, misalnya menyimpan token akses dalam penyimpanan lokal untuk digunakan pada permintaan-permintaan selanjutnya.

Menampilkan menu pada Flutter: Setelah autentikasi berhasil, kita dapat menampilkan menu atau halaman lain yang hanya dapat diakses oleh pengguna yang sudah terotentikasi. kita dapat menggunakan widget-widget Flutter seperti Drawer, BottomNavigationBar, atau TabBar untuk membuat menu navigasi yang sesuai dengan desain aplikasi kita.


Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

Jawab:
Berikut ini adalah penjelasan dan fungsi dari setiap widget yang digunakan dalam tugas ini:

1. Provider: Digunakan untuk mengelola state manajemen aplikasi secara global dengan menggunakan konsep Provider dari Flutter.
2. MaterialApp: Membuat aplikasi Flutter dengan desain material. Menyediakan fitur dan pengaturan terkait aplikasi, seperti judul, tema, dan halaman beranda.
3. Scaffold: Membuat kerangka dasar aplikasi dengan struktur tampilan dasar seperti AppBar dan body.
4. AppBar: Menampilkan bilah aplikasi di bagian atas.
5. Container: Membuat wadah yang dapat mengandung widget lain.
6. Column: Menampilkan widget secara vertikal dalam satu kolom.
7. TextField: Membuat input teks yang dapat diisi oleh pengguna.
8. SizedBox: Memberikan jarak kosong vertikal antara widget.
9. ElevatedButton: Membuat tombol dengan efek naik ketika ditekan.
10. SnackBar: Menampilkan pesan sementara yang muncul di bagian bawah layar.
11. AlertDialog: Menampilkan dialog dengan judul dan konten.
12. Drawer: Membuat menu geser yang muncul dari sisi aplikasi.
13. FutureBuilder: Membangun UI berdasarkan hasil masa depan (future).
14. Center: Menengahkan widget-child secara horizontal dan vertikal.
15. PointGuard: Mengatur serangan tim dengan mengontrol bola dan mengoperkannya ke pemain yang tepat di saat yang tepat untuk mencetak skor.
16. Text: Menampilkan teks.
17. ListView.builder: Membuat daftar scrollable dengan banyak item menggunakan pembangun (builder).
18. ListTile: Membuat item dalam daftar dengan judul dan opsi lainnya.
19. MaterialPageRoute: Mendefinisikan rute atau halaman baru dalam aplikasi.


Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).


Jawab:

1. Melakukan migrasi proyek Django ke salah satu PaaS alternatif.
2. Mendaftar dan login ke situs web DOM Cloud Hosting.
3. Menambahkan proyek Django ke DOM Cloud Hosting dengan mengimpor repositori yang sudah ada.
4. Mengkonfigurasi deployment untuk aplikasi Django, termasuk pengaturan layanan PostgreSQL dan sertifikat SSL.
5. Melakukan deployment aplikasi menggunakan DOM Cloud Hosting.
6. Mengintegrasikan sistem autentikasi pada Django dengan membuat aplikasi bernama "authentication" dan mengatur pengaturan yang diperlukan.
7. Membuat view untuk login pada aplikasi "authentication" yang akan mengautentikasi permintaan login dari pengguna.
8. Mengatur routing untuk login pada Django.
9. Menginstal paket "pbp_django_auth" pada proyek Flutter untuk mengintegrasikan sistem autentikasi Django.
10. Mengubah tampilan awal aplikasi Flutter menjadi halaman login.
11. Membuat halaman login yang menerima input username dan password, melakukan validasi, dan mengarahkan pengguna ke halaman beranda jika login berhasil.
12. Membuat model kustom sesuai dengan proyek Django dengan menggunakan data JSON yang tersedia dari endpoint Django.
13. Membuat halaman yang menampilkan semua tugas yang ada pada endpoint JSON Django dengan menggunakan widget ListView.builder.
14. Mengatur tombol "Riwayat Tugas" pada menu untuk mengarahkan pengguna ke halaman tugas.
15. Membuat halaman detail untuk setiap tugas dengan menampilkan informasi seperti nama, mata kuliah, tanggal, progress, dan deskripsi.
16. Mengatur tombol kembali ke halaman daftar tugas.
17. Mengimpor dan menggunakan package http untuk melakukan permintaan HTTP dari aplikasi Flutter ke endpoint JSON Django.