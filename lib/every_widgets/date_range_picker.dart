//! Date range picker

import 'package:flutter/material.dart';

class MyDateRangePicker extends StatefulWidget {
  const MyDateRangePicker({Key? key}) : super(key: key);

  @override
  MyDateRangePickerState createState() {
    return MyDateRangePickerState();
  }
}

class MyDateRangePickerState extends State<MyDateRangePicker> {
  DateTimeRange selectedDates = DateTimeRange(
    start: DateTime.now(),
    end: DateTime.now(),
  );
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "${selectedDates.duration.inDays}",
          ),
          ElevatedButton(
            child: const Text("Choose Dates"),
            onPressed: () async {
              final DateTimeRange? dateTimeRange = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(3000),
              );
              if (dateTimeRange != null) {
                setState(() {
                  selectedDates = dateTimeRange;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
