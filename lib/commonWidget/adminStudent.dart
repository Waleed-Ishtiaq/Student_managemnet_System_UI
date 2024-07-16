// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:attendence_management_system/AdminPannel/adminLogin.dart';
import 'package:attendence_management_system/login.dart';
import 'package:attendence_management_system/signup.dart';
import 'package:attendence_management_system/userPanel/userhome.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Center(
            child: Image.asset(
              'lib/assets/logo.png',
              width: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey[100],
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ],
            ),
            padding: EdgeInsets.only(top: 50, bottom: 30),
            margin: EdgeInsets.only(left: 30, right: 30),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AdminLogin()),
                    );
                  },
                  child: Container(
                      height: 50,
                      width: 305,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[300]),
                      child: const Center(
                        child: Text(
                          'Admin',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Login()),
                    );
                  },
                  child: Container(
                      height: 50,
                      width: 305,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red[300]),
                      child: const Center(
                        child: Text(
                          'Student',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
