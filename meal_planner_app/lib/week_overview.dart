import 'package:flutter/material.dart';

class WeekOverview extends StatelessWidget {
  final DateTime startDate;

  const WeekOverview({super.key, required this.startDate});

  @override
  Widget build(BuildContext context) {
    final List<String> days = [
      'Maandag',
      'Dinsdag',
      'Woensdag',
      'Donderdag',
      'Vrijdag',
      'Zaterdag',
      'Zondag'
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Week Overzicht')),
      body: ListView.builder(
        itemCount: days.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(days[index]),
            // Add your icons or other UI elements here
          );
        },
      ),
    );
  }
}
