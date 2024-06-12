import 'package:flutter/material.dart';
import 'day_detail.dart';

class WeekOverview extends StatefulWidget {
  final DateTime startDate;

  const WeekOverview({super.key, required this.startDate});

  @override
  createState() => WeekOverviewState();
}

class WeekOverviewState extends State<WeekOverview> {
  final Map<String, bool> _expandedDays = {};

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < 7; i++) {
      DateTime date = widget.startDate.add(Duration(days: i));
      _expandedDays[date.toString()] = false;
    }
  }

  void _toggleExpand(String date) {
    setState(() {
      _expandedDays[date] = !(_expandedDays[date] ?? false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 7,
      itemBuilder: (context, index) {
        DateTime date = widget.startDate.add(Duration(days: index));
        String dateString = date.toString();
        bool isExpanded = _expandedDays[dateString] ?? false;

        return Card(
          child: Column(
            children: [
              ListTile(
                title: Text(
                    '${date.weekday}, ${date.day}/${date.month}/${date.year}'),
                trailing: IconButton(
                  icon:
                      Icon(isExpanded ? Icons.expand_less : Icons.expand_more),
                  onPressed: () => _toggleExpand(dateString),
                ),
              ),
              if (isExpanded)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.breakfast_dining),
                          SizedBox(width: 8),
                          Expanded(child: Text('Breakfast: ...')),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.lunch_dining),
                          SizedBox(width: 8),
                          Expanded(child: Text('Lunch: ...')),
                        ],
                      ),
                      const Row(
                        children: [
                          Icon(Icons.dinner_dining),
                          SizedBox(width: 8),
                          Expanded(child: Text('Dinner: ...')),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DayDetail(date: date),
                            ),
                          );
                        },
                        child: const Text('Edit'),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
