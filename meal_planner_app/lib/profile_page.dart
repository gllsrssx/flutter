import 'package:flutter/material.dart';
import 'package:firebase_ui_auth/firebase_ui_auth.dart';
import 'package:firebase_ui_oauth_apple/firebase_ui_oauth_apple.dart';
import 'package:firebase_ui_oauth_google/firebase_ui_oauth_google.dart';
import 'config.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProfileScreen(
      providers: [
        EmailAuthProvider(),
        PhoneAuthProvider(),
        GoogleProvider(clientId: Config.googleClientId),
        AppleProvider(),
      ],
      actions: [
        SignedOutAction((context) {
          Navigator.pushReplacementNamed(context, '/sign-in');
        }),
      ],
    );
  }
}
