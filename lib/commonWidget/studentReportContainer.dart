// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:attendence_management_system/AdminPannel/studentAttendanceDetails.dart';
import 'package:flutter/material.dart';

class studentReportContainer extends StatefulWidget {
  const studentReportContainer({super.key});

  @override
  State<studentReportContainer> createState() => _studentReportContainerState();
}

class _studentReportContainerState extends State<studentReportContainer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.grey[200],
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Student Name',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Grade A',
                      style: TextStyle(fontSize: 18, color: Colors.green),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Present',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '10',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Absent',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total Leave',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      '1',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
