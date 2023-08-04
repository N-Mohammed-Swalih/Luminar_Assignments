import 'package:assignment/Home_page.dart';
import 'package:assignment/registration_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey, // this key used to fetch the current state of the form
          child: Column(
            children: [
              const SizedBox(height: 250,),
              Text("Login",
              style: GoogleFonts.roboto(
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 10,),
              Center(
                child: Text("Welcome Back! Login with your credentials",
                style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20.0, left: 10, right: 10),
                child: TextFormField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                          prefixIcon: Icon(Icons.mail),
                      labelText: "Email ID",
                      hintText: "Enter your email id"),
                  validator: (username) {
                    if (username!.isEmpty || !username.contains('@')) {
                      return 'field is empty/Invalid';
                    } else {
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 20, bottom: 20),
                child: TextFormField(
                  obscureText: nopasswordvisibility,
                  validator: (password) {
                    if (password!.isEmpty || password.length < 8) {
                      return 'field is empty / invalid length';
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(onPressed: (){
                        setState(() {
                        if(nopasswordvisibility == true)
                        {
                          nopasswordvisibility=false;
                        }
                        else{
                          nopasswordvisibility=true;
                        }
                        });
                      },
                      icon:  Icon(nopasswordvisibility == true ? Icons.visibility_off_sharp : Icons.visibility) ),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
                ),
              ),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    fixedSize: const Size(350, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)
                  )
                  ),
                    onPressed: () {
                      final valid = formkey.currentState!.validate();
                      if (valid) {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => HomePage()));
                      } else {
                        Fluttertoast.showToast(
                            msg: "Invalid Username or Password",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM_LEFT,
                            // timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0);
                      }
                    },
                    child: Text("Login")),
              ),
              SizedBox(height: 10,),
              Center(
                child: TextButton(onPressed: (){
                  Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => RegistrationPage()));
                },child: Text("Do you have an account? Sign Up",
                style: TextStyle(
                  color: Colors.grey
                ),)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
