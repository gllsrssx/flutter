import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
                'Welcome ${FirebaseAuth.instance.currentUser?.displayName ?? ''}!',
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/account');
              },
              child: const Text('Account'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/week_overview');
              },
              child: const Text('Week Overview'),
            ),
          ],
        ),
      ),
    );
  }
}
