import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/pages/auth_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      home: AuthPage(),
    );
  }
}
