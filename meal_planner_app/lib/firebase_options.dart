import 'package:firebase_core/firebase_core.dart';

const firebaseConfig = {
  "apiKey": "AIzaSyDbmr4sEOYtDxPXE8smthQhgoSILtF-uHw",
  "authDomain": "flutter-b2483.firebaseapp.com",
  "projectId": "flutter-b2483",
  "storageBucket": "flutter-b2483.appspot.com",
  "messagingSenderId": "702932366935",
  "appId": "1:702932366935:web:495ee10a05275313c55512"
};

Future<void> initializeFirebase() async {
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: firebaseConfig['apiKey']!,
      authDomain: firebaseConfig['authDomain']!,
      projectId: firebaseConfig['projectId']!,
      storageBucket: firebaseConfig['storageBucket']!,
      messagingSenderId: firebaseConfig['messagingSenderId']!,
      appId: firebaseConfig['appId']!,
    ),
  );
}
