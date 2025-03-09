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
      backgroundColor: const Color.fromARGB(255, 197, 218, 229),
      appBar: AppBar(
        title: Text("Profil", style: TextStyle(color: Colors.white ),) ,
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 125, 225),
      ),


      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,

            backgroundImage: NetworkImage("data:image/jpeg;base64,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"), // Ganti dengan path gambar Anda
          ),
          SizedBox(height: 10),
          Text(
            "I Ketut Resika Arthana, S.T., M.Kom",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
          Text(
            "http://www.rey1024.com",
            style: TextStyle(fontSize: 14, color: Colors.blue),
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
      border: Border.all(color: Colors.blue, width: 2), // Border biru
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
            color: Colors.blue, // Latar belakang biru untuk teks
          ),
          child: Text(
            title,
            textAlign: TextAlign.center, // Agar teks di tengah
            style: TextStyle(
              color: Colors.orange, // Warna teks kuning
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

