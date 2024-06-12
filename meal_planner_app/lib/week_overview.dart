import 'package:flutter/material.dart';
import 'day_detail.dart';

class WeekOverview extends StatelessWidget {
  const WeekOverview({super.key}); // Use super.key and const

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(7, (index) {
        return ListTile(
          title: Text('Day ${index + 1}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DayDetail(index + 1)),
            );
          },
        );
      }),
    );
  }
}
