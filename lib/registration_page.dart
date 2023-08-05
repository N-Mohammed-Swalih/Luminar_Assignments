import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_page.dart';
import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  var formkey = GlobalKey<FormState>();
  bool nopasswordvisibility = true;
  String? initpassword;

  String? confirmpassword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Form(
          key: formkey,
          child: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Sign Up",
                style: GoogleFonts.roboto(
                    fontSize: 50, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Text("Create an account,its free"),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 10.0,
                  right: 10,
                  top: 0,
                  bottom: 10,
                ),
                child: TextFormField(
                  obscureText: nopasswordvisibility,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    prefixIcon: Icon(Icons.mail),
                    labelText: "Email ID",
                  ),
                  validator: (mail) {
                    if (mail!.isEmpty || !mail.contains('@')) {
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
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nopasswordvisibility == true) {
                                nopasswordvisibility = false;
                              } else {
                                nopasswordvisibility = true;
                              }
                            });
                          },
                          icon: Icon(nopasswordvisibility == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
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
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (nopasswordvisibility == true) {
                                nopasswordvisibility = false;
                              } else {
                                nopasswordvisibility = true;
                              }
                            });
                          },
                          icon: Icon(nopasswordvisibility == true
                              ? Icons.visibility_off_sharp
                              : Icons.visibility)),
                      hintText: "Enter your password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)),
                      labelText: "Password"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50, //height of button
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(32)),
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
                  child: Text("Sign Up"),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    "Do You have an accont?Login",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ))
            ]),
          ),
        ));
  }
}
