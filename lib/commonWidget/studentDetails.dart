// ignore_for_file: prefer_const_constructors

import 'package:attendence_management_system/AdminPannel/studentAttendanceDetails.dart';
import 'package:attendence_management_system/userPanel/viewReport.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StudentContainer extends StatefulWidget {
  const StudentContainer({
    Key? key,
  });

  @override
  State<StudentContainer> createState() => _StudentContainerState();
}

class _StudentContainerState extends State<StudentContainer> {
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
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Student Name',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Position',
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 60,
                      child: Center(
                        child: Image.asset('lib/assets/profile.png'),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  studentAttendanceDeatails()),
                        );
                      },
                      child: Text(
                        'View Details',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            decoration: TextDecoration.underline),
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
