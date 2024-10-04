import 'package:flutter/material.dart';
import 'package:submission_flutter_app/ui/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel App',
      home: const LoginScreen(),
    );
  }
}
