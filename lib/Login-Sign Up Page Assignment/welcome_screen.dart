import './registration_page.dart';
import './login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            const SizedBox(
              height: 150,
            ),
            Center(
              child: Text("Hello There!",
                  style: GoogleFonts.sanchez(fontSize: 25)),
            ),
            const SizedBox(height: 20),
            Text(
                "Automatic identity verification which enable you to verify your identity"),
            const SizedBox(height: 100),
            Image.network(
                "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ2BEfjoBoKcRdW-vPz9ODlEMqzW83uuqDttoPfsLVdwZI9lmik"),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => LoginPage()));
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(300, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistrationPage()));
              },
              child: Text("Sign Up"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: Size(300, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
