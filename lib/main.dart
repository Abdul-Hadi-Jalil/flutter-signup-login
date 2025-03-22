import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login/Signup app',
      home: Scaffold(
        body: Column(
          children: [
            Center(
              child: Text(
                'Login',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 200,
                right: 200,
                top: 50,
                bottom: 20,
              ),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Username',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  ElevatedButton(onPressed: () {}, child: Text('Login')),
                  TextButton(onPressed: () {}, child: Text('Forgot Password')),
                ],
              ),
            ),
            Center(
              child: Row(
                children: [
                  Text('Not a member?'),
                  TextButton(onPressed: () {}, child: Text('Sign up now')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
