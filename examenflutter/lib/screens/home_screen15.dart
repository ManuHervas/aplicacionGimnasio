import 'package:examenflutter/screens/SigIn.dart';
import 'package:examenflutter/themes/app_themes_screen15.dart';
import 'package:flutter/material.dart';
import 'package:examenflutter/screens/screens15.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 230),
            const FlutterLogo(
              size: 150,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Log In', style: TextStyle(fontSize: 20)),
              ),
              onPressed: () {
                final route = MaterialPageRoute(
                    builder: (context) => const LogInScreen());
                Navigator.push(context, route);
              },
            ),
            const SizedBox(height: 35),
            ElevatedButton(
              child: const Padding(
                padding: EdgeInsets.all(20.0),
                child: Text('Sing in', style: TextStyle(fontSize: 20)),
              ),
              onPressed: () {
                final route = MaterialPageRoute(
                    builder: (context) => const SignInScreen());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      ),
    );
  }
}
