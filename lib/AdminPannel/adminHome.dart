// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:attendence_management_system/commonWidget/studentDetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class AdminHome extends StatefulWidget {
  const AdminHome({super.key});

  @override
  State<AdminHome> createState() => _AdminHomeState();
}

class _AdminHomeState extends State<AdminHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red[300],
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hey Admin !',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Morning',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      CircleAvatar(
                        radius: 35,
                        child: Image.asset(
                          'lib/assets/profile.png',
                          height: 60,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Student Details',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 400,
              width: 360,
              child: ListView(
                children: [
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                  Container(height: 110, width: 200, child: StudentContainer()),
                ],
              ),
            ),

            // Generate Report Button
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.report,
                    color: Colors.white), // Add your desired icon here
                label: Text(
                  'Generate Report',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), // Rounded corners
                  ),
                  backgroundColor: Colors.red[300],
                  minimumSize: Size(360, 45),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
