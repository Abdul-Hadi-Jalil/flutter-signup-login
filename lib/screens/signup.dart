import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 313),
              child: Column(
                children: [
                  Text(
                    "Sign up",
                    style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'inter',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 11),
                  SizedBox(
                    width: 212,
                    child: Text(
                      "Learn on your own time from top universities and businesses.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 38),
                  Row(
                    spacing: 5,
                    children: [
                      Text("Full Name"),
                      Text(
                        '*',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 17, 0),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 11),
                  Container(
                    height: 48,
                    width: 313,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 5,
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
                  SizedBox(height: 11),
                  Container(
                    height: 48,
                    width: 313,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    spacing: 5,
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
                  SizedBox(height: 11),
                  Container(
                    width: 313,
                    height: 48,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 11),
                  InkWell(
                    onTap: () {
                      print('it is pressed');
                    },
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          color: Color(0xff076EC8),
                          fontSize: 10,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                  // Login button for user to login to the app
                  ElevatedButton(
                    onPressed: () {
                      print("Login button is pressed");
                    },
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      minimumSize: Size(313, 48),
                      backgroundColor: Color(0xff1b4bdb),
                      foregroundColor: Colors.white,
                    ),
                    child: Text('Join for free'),
                  ),
                  SizedBox(height: 15),
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
                  SizedBox(height: 15),
                  // the button for user to select sign in with google
                  InkWell(
                    onTap: () {},
                    child: Container(decoration: BoxDecoration(), child: Row()),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    label: Row(
                      children: [
                        Spacer(flex: 1),
                        Text("Continue with Google"),
                        Spacer(flex: 2),
                      ],
                    ),
                    icon: SvgPicture.asset('assets/icons/Google.svg'),

                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      minimumSize: Size(313, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Button for user to continue with facebook
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      minimumSize: Size(313, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                      padding: EdgeInsets.zero, // Ensures no extra padding
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 12),
                            child: SvgPicture.asset(
                              'assets/icons/Facebook_icon.svg',
                            ),
                          ),
                        ),
                        Center(child: Text("Continue with Facebook")),
                      ],
                    ),
                  ),

                  SizedBox(height: 20),
                  // Button for user to continue with facebook
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: SvgPicture.asset('assets/icons/apple_icon.svg'),
                    label: Row(
                      children: [
                        Spacer(flex: 1),
                        Text("Continue with Apple"),
                        Spacer(flex: 2),
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      side: BorderSide(color: Colors.black),
                      minimumSize: Size(313, 48),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2),
                      ),
                      foregroundColor: Colors.black,
                      backgroundColor: Colors.white,
                    ),
                  ),
                  SizedBox(height: 38),
                  // Last text if user wants to signup instead of login
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('New to Coursera?'),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          child: Text(
                            'Login',
                            style: TextStyle(color: Color(0xff161E8F)),
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
      ),
    );
  }
}
