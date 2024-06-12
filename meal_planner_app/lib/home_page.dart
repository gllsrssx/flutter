import 'package:flutter/material.dart';
import 'week_overview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  DateTime currentDate = DateTime.now();

  void _previousWeek() {
    setState(() {
      currentDate = currentDate.subtract(const Duration(days: 7));
    });
  }

  void _nextWeek() {
    setState(() {
      currentDate = currentDate.add(const Duration(days: 7));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wat eten we vandaag?'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: _previousWeek,
                ),
                Text(
                  'Week van ${currentDate.day}/${currentDate.month}/${currentDate.year}',
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_forward),
                  onPressed: _nextWeek,
                ),
              ],
            ),
          ),
          Expanded(
            child: WeekOverview(
              startDate: currentDate,
            ),
          ),
        ],
      ),
    );
  }
}
