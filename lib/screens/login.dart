import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Welcome back"),
          Text("Email"),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: TextFormField(keyboardType: TextInputType.emailAddress),
          ),
          Text("Password"),
          Container(
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: TextFormField(),
          ),
          InkWell(
            onTap: () {
              print('it is pressed');
            },
            child: Text('Forgot password?'),
          ),
          // Login button for user to login to the app
          ElevatedButton(
            onPressed: () {
              print("Login button is pressed");
            },
            child: Text('Login'),
          ),
        ],
      ),
    );
  }
}
