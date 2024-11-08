import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1689977968861-9c91dbb16049?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmlsZSUyMHBpY3R1cmV8ZW58MHx8MHx8fDA%3D") // Ganti dengan foto profil
              ),
              SizedBox(height: 20),
              Text(
                'John Doe', // Ganti dengan nama pengguna yang sesuai
                style: TextStyle(
                    fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'johndoe@example.com', // Ganti dengan email pengguna yang sesuai
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  // Tindakan lain yang diinginkan, misalnya mengubah data profil
                  print("Edit profile pressed");
                },
                child: Text('Edit Profile'),
              ),
            ],
          ),
        ),
      );

  }
}
