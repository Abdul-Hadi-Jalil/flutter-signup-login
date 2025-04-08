import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 300),
            child: Column(
              children: [
                Text("Welcome back"),
                Row(
                  children: [
                    Text("Email"),
                    Text(
                      '*',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 17, 0),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                Row(
                  children: [
                    Text("Password"),
                    Text(
                      '*',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 17, 0),
                      ),
                    ),
                  ],
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ),
                InkWell(
                  onTap: () {
                    print('it is pressed');
                  },
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
                // Login button for user to login to the app
                ElevatedButton(
                  onPressed: () {
                    print("Login button is pressed");
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),
                ),
                // a separator line with written or and again a line
                Row(
                  children: [
                    Expanded(child: Divider()),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('or'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),
                // the button for user to select sign in with google
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Continue with Google"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
                // Button for user to continue with facebook
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Continue with Facebook"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
                // Button for user to continue with facebook
                ElevatedButton.icon(
                  onPressed: () {},
                  label: Text("Continue with Apple"),
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                  ),
                ),
                // Last text if user wants to signup instead of login
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New to Coursera?'),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () {},
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
