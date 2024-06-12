import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class DayDetail extends StatelessWidget {
  final int dayIndex;

  const DayDetail(this.dayIndex, {super.key}); // Use super.key and const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Day $dayIndex Details')),
      body: StreamBuilder<DocumentSnapshot>(
        stream: FirebaseFirestore.instance
            .collection('meals')
            .doc('day_$dayIndex')
            .snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator()); // Add const
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return Center(child: Text('No data for Day $dayIndex'));
          } else {
            var data = snapshot.data!.data() as Map<String, dynamic>;
            return ListView(
              children: [
                ListTile(title: Text('Breakfast: ${data['breakfast']}')),
                ListTile(title: Text('Lunch: ${data['lunch']}')),
                ListTile(title: Text('Dinner: ${data['dinner']}')),
              ],
            );
          }
        },
      ),
    );
  }
}
