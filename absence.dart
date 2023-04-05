import 'package:app/list.dart';
import 'package:app/menu.dart';
import 'package:app/profil.dart';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Absence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DomiCare',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: AbsencePage(),
    );
  }
}

class AbsencePage extends StatefulWidget {
  @override
  _AbsencePageState createState() => _AbsencePageState();
}

class _AbsencePageState extends State<AbsencePage> {
  DateTime? _absenceDate;
  String? _absenceReason;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: ((context) => HomePage())));
          },
        ),
        backgroundColor: Colors.green,
        title: Text('Absence'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Text(
              'Full Name :',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  _absenceReason = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Full Name',
              ),
            ),
            Text(
              '        ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => DaysList())));
              },
              child: Text('Date'),
            ),
            SizedBox(height: 20),
            Text(
              'Absence Reason :',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 10),
            TextField(
              onChanged: (value) {
                setState(() {
                  _absenceReason = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Enter Reason For Absence',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // perform the submit action here
                _absenceReason = ''; // clear the absence reason text field
                setState(
                    () {}); // redraw the widget to show the updated text field
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
