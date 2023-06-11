import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';
import 'package:study_tracker/pages/login.dart';
import 'package:study_tracker/pages/transaction.dart';
import 'package:study_tracker/widgets/drawer.dart';
import 'package:study_tracker/pages/form.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          'Study Tracker',
        ),
      ),
      drawer: const DrawerMenu(), // Menambahkan drawer pada halaman
      body: SingleChildScrollView(
        // Widget wrapper yang dapat discroll
        child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              // Widget untuk menampilkan children secara vertikal
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                  child: Text(
                    'Selamat datang!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                // Grid layout
                GridView.count(
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: <Widget>[
                    Material(
                      color: Color.fromARGB(255, 0, 0, 0),
                      child: InkWell(
                        // Area responsive terhadap sentuhan
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TransactionPage()),
                          );
                        },
                        child: Container(
                          // Container untuk menyimpan Icon dan Text
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.list_alt,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: 30.0,
                                ),
                                Padding(padding: EdgeInsets.all(3)),
                                Text(
                                  "Lihat Study Tracker",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color.fromARGB(255, 0, 0, 0),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyFormPage()),
                          );
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  Icons.add_box,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  size: 40.0,
                                ),
                                Padding(padding: EdgeInsets.all(1)),
                                Text(
                                  "Tambah Studi",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Material(
                      color: Color.fromARGB(255, 0, 0, 0),
                      child: InkWell(
                        onTap: () async {
                          final response = await request.logout(
                              // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                              "https://darling-display-giy.domcloud.io/");
                          String message = response["message"];
                          print(response["message"]);
                          if (response['status']) {
                            String uname = response["username"];
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("$message Sampai jumpa, $uname."),
                            ));
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                              content: Text("$message"),
                            ));
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: const [
                                Icon(
                                  // Kamu juga dapat mengggunakan icon lainnya
                                  // seperti Icons.logout
                                  Icons.door_back_door,
                                  color: Colors.white,
                                  size: 30.0,
                                ),
                                Padding(padding: EdgeInsets.all(3)),
                                Text(
                                  "Logout",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )),
      ),
    );
  }
}
