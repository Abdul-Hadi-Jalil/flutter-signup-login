import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 450, right: 450, top: 100),
        child: Column(
          children: [
            Text("Sign Up", style: TextStyle(fontSize: 24)),
            Spacer(),
            Text(
              textAlign: TextAlign.center,
              "Let's get started. Are you ready to be a part of something new? Then boldly move forward with us.",
            ),
            Spacer(flex: 3),
            TextField(
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(),
            TextField(
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            Spacer(flex: 3),
            ElevatedButton(
              onPressed: () {},
              child: Text("Sign up"),
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: const Color.fromARGB(255, 1, 103, 186),
                minimumSize: Size(450, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
            ),
            Spacer(),
            Text(
              "By signing up to create and account I accept Terms of Use and Privacy Policy.",
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?"),
                TextButton(onPressed: () {}, child: Text("Log in")),
              ],
            ),
            SizedBox(height: 1),
            Row(
              children: [
                Expanded(
                  child: Divider(color: Colors.grey.shade400, endIndent: 10),
                ),
                Text("or"),
                Expanded(
                  child: Divider(color: Colors.grey.shade400, indent: 10),
                ),
              ],
            ),
            SizedBox(height: 10),
            OutlinedButton(
              onPressed: () {},
              child: Text("Sign up with Google"),
              style: OutlinedButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.white,
                minimumSize: Size(450, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
              ),
            ),
            Spacer(flex: 5),
          ],
        ),
      ),
    );
  }
}
