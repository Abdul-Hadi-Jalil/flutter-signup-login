import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 313),
            child: Column(
              children: [
                Text(
                  "Welcome back",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'inter',
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                  width: 313,
                  height: 48,
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
                      style: TextStyle(color: Color(0xff076EC8), fontSize: 10),
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
                    side: BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2),
                    ),
                    minimumSize: Size(313, 48),
                    backgroundColor: Color(0xff1b4bdb),
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
                // Button for user to continue with facebook
                ElevatedButton.icon(
                  icon: SvgPicture.asset('assets/icons/Facebook_icon.svg'),
                  onPressed: () {},
                  label: Text("Continue with Facebook"),
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
                // Button for user to continue with facebook
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/apple_icon.svg'),
                  label: Text("Continue with Apple"),
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
    );
  }
}
