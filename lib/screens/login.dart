import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              spacing: 10,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Not a member?'),
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Signup()),
                    );
                  },
                  hoverColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: Text('Sign up now'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
