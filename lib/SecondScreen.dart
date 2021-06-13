import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                child: Text(
              'Thank you for Submission',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'),
              style: TextButton.styleFrom(
                primary: Colors.amber,
                backgroundColor: Colors.teal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
