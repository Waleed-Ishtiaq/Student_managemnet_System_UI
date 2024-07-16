// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, camel_case_types

import 'package:attendence_management_system/commonWidget/studentDetails.dart';
import 'package:attendence_management_system/commonWidget/studentReportContainer.dart';
import 'package:flutter/material.dart';

class generateReport extends StatefulWidget {
  const generateReport({super.key});

  @override
  State<generateReport> createState() => _generateReportState();
}

class _generateReportState extends State<generateReport> {
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
                            'Hey Admin',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Good Morning !',
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

            // Students details for report
            SizedBox(
              height: 30,
            ),
            Container(
              height: 400,
              width: 360,
              child: ListView(
                children: [
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                  Container(
                      height: 140, width: 200, child: studentReportContainer()),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            // download button
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.download,
                    color: Colors.white), // Add your desired icon here
                label: Text(
                  'Download Report',
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
