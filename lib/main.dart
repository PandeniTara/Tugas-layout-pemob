import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 244, 216, 240),
      appBar: AppBar(
        title: Text("Profil", style: TextStyle(color: Colors.white ),) ,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 243, 26, 196),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,

            backgroundImage: AssetImage('assets/images/Fototara.jpeg'), // Ganti dengan path gambar Anda
          ),
          SizedBox(height: 10),
          Text(
            "Ni Kadek Pandeni Tara Apsari",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: const Color.fromARGB(255, 243, 33, 166)),
          ),
          Text(
            "tarapande2311@gmail.com",
            style: TextStyle(fontSize: 14, color: const Color.fromARGB(255, 243, 33, 156)),
          ),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.symmetric(horizontal: 50)),
          GridView.count(
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
            children: [
              _buildMenuItem(Icons.gps_fixed, "Singaraja", Colors.green),
              _buildMenuItem(Icons.store, "Panji", Colors.orange),
              _buildMenuItem(Icons.music_note, "All Genre", Colors.purple),
              _buildMenuItem(Icons.business, "Undiksha", Colors.blue),
            ],
          ),
        ],
      ),
    );
  }

 Widget _buildMenuItem(IconData icon, String title, Color iconColor) {
  return Container(
    width: 210, //Ukuran box
    height: 200, //Ukuran box
    margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
      border: Border.all(color: const Color.fromARGB(255, 243, 33, 187), width: 2), // Border biru
      borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ), // Sudut melengkung
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 50),
        Icon(icon, size: 70, color: iconColor), // Ikon di tengah
        Spacer(),
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 8), // Padding teks
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 243, 33, 198), // Latar belakang biru untuk teks
          ),
          child: Text(
            title,
            textAlign: TextAlign.center, // Agar teks di tengah
            style: TextStyle(
              color: const Color.fromARGB(255, 57, 1, 29), // Warna teks kuning
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ],
    ),
  );
}
}

