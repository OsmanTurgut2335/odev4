import 'package:flutter/material.dart';

class OBSWelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[50],
      appBar: AppBar(
        title: Text('OBS Karşılama Sayfası'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildRoleButton(context, "Hoca"),
            SizedBox(height: 20),
            _buildRoleButton(context, "Öğrenci"),
            SizedBox(height: 20),
            _buildRoleButton(context, "Sekreter"),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigoAccent,
              ),
              child: Text("Giriş Sayfasına Dön"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRoleButton(BuildContext context, String role) {
    return ElevatedButton(
      onPressed: () {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text("Hoşgeldiniz, $role!"),
        ));
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueAccent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
      ),
      child: Text(
        "Hoşgeldiniz $role",
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
