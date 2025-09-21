import 'package:flutter/material.dart';

import 'screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Login/Signup app',
      theme: ThemeData(primaryColor: Colors.white),
      home: const Login(),
    );
  }
}
