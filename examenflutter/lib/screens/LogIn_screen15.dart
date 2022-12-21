import 'package:examenflutter/screens/listview_screens.dart';
import 'package:examenflutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(children: [
          const SizedBox(
            height: 70,
          ),
          const FlutterLogo(
            size: 120,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomForm(
            hintText: 'Usuario',
            suffixIcon: Icons.group_outlined,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomForm4(
            obscuretext: true,
            hintText: 'Contraseña',
            suffixIcon: Icons.security_rounded,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            child: const SizedBox(
                width: double.infinity,
                child: Text(
                  'Sign In',
                  textAlign: TextAlign.center,
                )),
            onPressed: () {
              final route = MaterialPageRoute(
                  builder: (context) => const ListViewScreen());
              Navigator.push(context, route);
            },
          ),
        ]),
      ),
    );
  }
}
