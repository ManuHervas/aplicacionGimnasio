import 'package:examenflutter/screens/listview_screens.dart';
import 'package:examenflutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

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
            hintText: 'Nombre',
            suffixIcon: Icons.group_outlined,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomForm2(
            hintText: 'Apellidos',
            suffixIcon: Icons.person,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomForm3(
            hintText: 'Correo Electrónico',
            suffixIcon: Icons.email,
          ),
          const SizedBox(
            height: 50,
          ),
          const CustomForm4(
            hintText: 'Contraseña',
            obscuretext: true,
            suffixIcon: Icons.security,
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
