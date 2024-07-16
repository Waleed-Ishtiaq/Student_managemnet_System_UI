import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class markLeave extends StatefulWidget {
  const markLeave({super.key});

  @override
  State<markLeave> createState() => _markLeaveState();
}

class _markLeaveState extends State<markLeave> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red[300],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Your Leave is Aproved!',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Please Mark your Leave',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    DateTime.now().year.toString() +
                        "-" +
                        DateTime.now().month.toString() +
                        "-" +
                        DateTime.now().day.toString(),
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.red[300]),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Center(
                          child: Text(
                            'Leave Marked !',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        duration: Duration(seconds: 3),
                        backgroundColor: Colors.white,
                      ),
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 45,
                    child: Image.asset(
                      'lib/assets/fingerprint.png',
                      height: 60,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
