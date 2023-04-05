import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class DaysList extends StatefulWidget {
  @override
  _DaysListState createState() => _DaysListState();
}

class _DaysListState extends State<DaysList> {
  late DateTime _selectedDay;

  @override
  void initState() {
    super.initState();
    _selectedDay = DateTime.now();
  }

  @override
  Widget build(BuildContext context) {
    // Get the current date
    DateTime currentDate = DateTime.now();

    // Calculate the start date of the week (Sunday)
    DateTime startDate =
        currentDate.subtract(Duration(days: currentDate.weekday - 1));

    // Calculate the end date of the week (Saturday)
    DateTime endDate = startDate.add(Duration(days: 6));

    // Create a list of days for the current week
    List<DateTime> days = [];
    for (int i = 0; i < 7; i++) {
      days.add(startDate.add(Duration(days: i)));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Days List'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: MediaQuery.of(context).size.height / 2,
                  child: ListView.builder(
                    itemCount: days.length,
                    itemBuilder: (BuildContext context, int index) {
                      final day = days[index];
                      return ListTile(
                        title: Text(
                          '${day.toLocal()}'.split(' ')[0],
                          style: TextStyle(fontSize: 20),
                        ),
                        selected: day == _selectedDay,
                        onTap: () {
                          // Update the selected day and close the modal bottom sheet
                          setState(() {
                            _selectedDay = day;
                          });
                          Navigator.pop(context);
                        },
                      );
                    },
                  ),
                );
              },
            );
          },
          child: Text(_selectedDay != null
              ? '${_selectedDay.toLocal()}'.split(' ')[0]
              : 'Select a date'),
        ),
      ),
    );
  }
}
