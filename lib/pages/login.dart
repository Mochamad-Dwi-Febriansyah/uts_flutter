import 'package:flutter/material.dart';
import 'package:uts_riyan/pages/utama.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8FAFF),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(height: 50,),
              //   image
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 40.0),
                child: Image.asset(
                  "lib/assets/images/jin.png",
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),

              //   input login
              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Username",
                    hintStyle: TextStyle(color: Colors.black38),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0), // 1px border
                      borderRadius: BorderRadius.all(Radius.circular(4.0)), // Optional: adds rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                  style: TextStyle(color: Colors.black87),
                ),
              ),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.black38),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0), // 1px border
                      borderRadius: BorderRadius.all(Radius.circular(4.0)), // Optional: adds rounded corners
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue, width: 1.5),
                      borderRadius: BorderRadius.all(Radius.circular(4.0)),
                    ),
                  ),
                  style: TextStyle(color: Colors.black87),
                ),
              ),

              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Lupa password?", style: TextStyle(color: Colors.black45),),
                  ],
                )
              ),

              //   button
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child:  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Utama())
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100.0, vertical: 15.0),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.login, color: Colors.white,),
                        SizedBox(width: 8),
                        Text("Login", style: TextStyle(color: Colors.white, fontSize: 18),)
                      ],
                    )
                )
              ),

              const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Text("Atau dengan"),
              ),
              //   our login
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("lib/assets/images/google.png", width: 40,),
                    SizedBox(width: 20),
                    Image.asset("lib/assets/images/apple-logo.png", width: 40,),
                    SizedBox(width: 20),
                    Image.asset("lib/assets/images/facebook.png", width: 40,)
                  ],
                ),
              ),


              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Sudah punya akun? ", style: TextStyle(color: Colors.black),),
                    Text("Login disini", style: TextStyle(color: Colors.blueAccent),)
                  ],
                )
              ),

            ],
          ),
        )),
      ),
    );
  }
}
