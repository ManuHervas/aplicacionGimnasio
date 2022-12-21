import 'package:examenflutter/screens/monitores_screens15.dart';
import 'package:examenflutter/screens/pista_screen.dart';
import 'package:examenflutter/screens/reservas_screen.dart';
import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Flutter App'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Pistas'),
            leading: const Icon(Icons.sports_basketball),
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => const PistaScreen());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            title: const Text('Monitores'),
            leading: const Icon(Icons.person),
            onTap: () {
              final route =
                  MaterialPageRoute(builder: (context) => MonitoresScreen());
              Navigator.push(context, route);
            },
          ),
          ListTile(
            title: const Text('Reservas'),
            leading: const Icon(Icons.monetization_on),
            onTap: () {
              final route = MaterialPageRoute(
                  builder: (context) => const ReservasScreen());
              Navigator.push(context, route);
            },
          ),
        ],
      ),
    );
  }
}
