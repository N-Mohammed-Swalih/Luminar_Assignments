import 'package:assignment/Tourism%20App/home_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: ToursimInitPage(),
  ));
}

class ToursimInitPage extends StatelessWidget {
  const ToursimInitPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Center(
                child: Container(
                    height: 270,
                    width: 300,
                    child: Image.asset("assets/tourismapp/maldives.png"))),
            Container(
              width: 180,
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TourismHomePage()));
                },
                child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(40)),
                    backgroundColor: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text("--OR--"),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text('Login with Facebook'), Icon(Icons.facebook)],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15)),
                    backgroundColor: Color.fromARGB(255, 2, 71, 127)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Login with Twitter'),
                    FaIcon(FontAwesomeIcons.twitter)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15)),
                    backgroundColor: Colors.blue),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 300,
              height: 40,
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Login with Google'),
                    FaIcon(FontAwesomeIcons.google)
                  ],
                ),
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.circular(15)),
                    backgroundColor: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
