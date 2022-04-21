// ignore_for_file: dead_code, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_full_hex_values_for_flutter_colors
import 'package:dsc/screens/signup.dart';
import 'package:dsc/widgets/primarybutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String name = ""; // use this function for showig name with a welcome heading
  bool _obscureText =
      true; // declare this variable for hiding the password with icon

  @override
  Widget build(BuildContext context) {
    // ignore: todo
    // TODO: implement build
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 100), //use for spacing or create a gap
            Center(
              child: Text(
                " Welcome $name",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Center(
                child: Text(
              " Add Your Details to login",
              style: TextStyle(fontSize: 20),
            )),
            SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: 'Enter Username', label: Text("Username")),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: _obscureText,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        //here weuse setstate for changing the visibility of password
                        onPressed: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                        icon: Icon(_obscureText
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      hintText: 'Enter Password',
                      label: Text("Password"),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            PrimaryButton(buttonText: 'login'),
            SizedBox(
              height: 20,
            ),
            Text("Forgot Password?",
                style: TextStyle(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontSize: 17)),
            SizedBox(
              height: 20,
            ),
            Text("Or Login With ",
                style: TextStyle(color: Colors.black, fontSize: 25)),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Center(
                child: Row(
                  children: [
                    SignInButton(
                      //use external package for signing button
                      Buttons.Facebook,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SignInButton(
                      Buttons.Apple,
                      mini: true,
                      onPressed: () {},
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    SignInButton(
                      Buttons.Email,
                      mini: true,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 67),
              child: Row(
                children: [
                  Text(
                    " Don't have an account?",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    // add this gesturedetector for linking login screen with a signup screen
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Signup(),
                          ));
                    },
                    child: Text(
                      " Signup",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
    throw UnimplementedError();
  }
}
