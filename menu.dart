import 'package:app/absence.dart';
import 'package:app/planning.dart';
import 'package:app/profil.dart';
import 'package:app/settings.dart';
import 'package:flutter/material.dart';

import 'dart:io';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Home'),
            backgroundColor: Colors.green,
          ),
          drawer: const NavigationDrawer(),
          body: ListView(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 266,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'image/da.png',
                        width: 200,
                        height: 140,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Press Me'),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 266,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'image/di.png',
                        width: 250,
                        height: 130,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Press Me'),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: 266,
                  height: 200,
                  margin: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(40),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'image/do.png',
                        width: 200,
                        height: 140,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Press Me'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) => Drawer(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Material(
        color: Color.fromARGB(255, 6, 186, 78),
        child: InkWell(
          onTap: () {},
          child: Container(
            color: Colors.green,
            padding: EdgeInsets.only(
                top: 24 + MediaQuery.of(context).padding.top, bottom: 24),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 52,
                    backgroundImage: AssetImage('image/doctor.png')),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Nabtie Nadire',
                  style: TextStyle(fontSize: 28, color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Container(
        padding: const EdgeInsets.all(24),
        child: Wrap(
          runSpacing: 16,
          children: [
            ListTile(
                leading: const Icon(Icons.home_outlined),
                title: const Text('Home'),
                onTap: () => Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: ((context) => HomePage())))),
            ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Profile'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyProf())));
                }),
            ListTile(
                leading: const Icon(Icons.calendar_month),
                title: const Text('Planning'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => MyPlan())));
                }),
            ListTile(
                leading: const Icon(Icons.person_off),
                title: const Text('Abcense'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: ((context) => Absence())));
                }),
            const Divider(
              color: Colors.black54,
            ),
            ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: ((context) => SettingsPage())));
                })
          ],
        ),
      );
}
