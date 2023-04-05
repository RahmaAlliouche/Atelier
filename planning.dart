import 'package:app/menu.dart';
import 'package:flutter/material.dart';

class MyPlan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Doctor planning',
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: ((context) => HomePage())));
            },
            icon: Icon(
              Icons.arrow_back,
              size: 25,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.green,
          title: Text('Planning'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Sunday 19/03/2023'),
              subtitle: Text('Alliouche Yasser at 14:00'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Monday 20/03/2023'),
              subtitle: Text('Saifi Amira at 10:00'),
            ),
            Divider(),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Thuesday 21/03/2023'),
              subtitle: Text('Ben cherif Hamza at 16:00'),
            ),
            Divider(),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Wednesday 22/03/2023'),
              subtitle: Text('Hamza Ali at 08:00'),
            ),
            Divider(),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Thursday 23/03/2023'),
              subtitle: Text('Haderbech imed at 9:00'),
            ),
            Divider(),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Friday 24/03/2023'),
              subtitle: Text('No element'),
            ),
            Divider(),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.green,
              ),
              title: Text('Saturday 25/03/2023'),
              subtitle: Text('Mahmoud Abla at 8:00'),
            ),
          ],
        ),
      ),
    );
  }
}
