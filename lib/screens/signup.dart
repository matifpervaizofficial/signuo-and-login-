// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:dsc/screens/login.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      SizedBox(
        height: 100,
      ),
      Center(
        child: Text(
          " Sign Up",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Center(
          child: Text(
        "Add your details to signup",
        style: TextStyle(
          fontSize: 18,
        ),
      )),
      SizedBox(height: 30),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    label: Text("Name"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(height: 20),
            TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    label: Text("Email"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(height: 20),
            TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.calendar_view_month),
                    label: Text("Age"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
                ),
                prefixIcon: Icon(Icons.password),
                label: Text("Password"),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
              obscureText: _obscureText,
            ),
            SizedBox(height: 20),
            TextField(
                obscureText: _obscureText,
                decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                      },
                      icon: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    prefixIcon: Icon(Icons.password),
                    label: Text("Confirm Password"),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)))),
            SizedBox(
              height: 20,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.06,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.blue.withOpacity(0.8)),
              child: Center(
                child: Text(
                  "buttonText",
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                children: [
                  Text(
                    "Already a member?",
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  GestureDetector(
                    //add this gesturedetector for linking signup screen with a login screen
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ])));
    // TODO: implement build
    throw UnimplementedError();
  }
}
