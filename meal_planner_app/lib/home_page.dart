import 'package:flutter/material.dart';
import 'week_overview.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key}); // Use super.key

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Meal Planner')), // Add const
      body: const WeekOverview(), // Add const
    );
  }
}
