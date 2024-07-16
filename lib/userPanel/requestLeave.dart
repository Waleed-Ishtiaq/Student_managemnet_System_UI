// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class requestLeave extends StatefulWidget {
  const requestLeave({super.key});

  @override
  State<requestLeave> createState() => _requestLeaveState();
}

class _requestLeaveState extends State<requestLeave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [
                // Attendance heading
                SizedBox(
                  height: 100,
                ),
                Text(
                  'Application Form !',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),

                // Leave Image

                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 45,
                  child: Image.asset(
                    'lib/assets/request.png',
                    height: 60,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),

                // Application form Container

                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3),
                        )
                      ],
                      borderRadius: BorderRadius.circular(10)),
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                  margin: EdgeInsets.only(left: 15, right: 15),
                  child: Column(
                    children: [
                      Text(
                        'Write Application to Admin',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        maxLines: 3,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Submit Button
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(
                          child: Text(
                            'Application Submited',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.white,
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(10), // Remove rounded corners
                      ),
                      minimumSize: Size(360, 45)),
                  child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 20, color: Colors.red[300]),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
