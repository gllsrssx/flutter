import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key}); // Use super.key and const

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile')), // Add const
      body: const Center(
          child: Text('Popular meals will be displayed here')), // Add const
    );
  }
}
