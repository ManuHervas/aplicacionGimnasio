import 'package:examenflutter/widgets/widget_pista2.dart';
import 'package:examenflutter/widgets/widget_pista3.dart';
import 'package:examenflutter/widgets/widget_pista4.dart';
import 'package:examenflutter/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PistaScreen extends StatelessWidget {
  const PistaScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pistas'),
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://ep01.epimg.net/especiales/2021/entrevista-bill-gates/img/bill.jpg'),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          SizedBox(
            height: 20,
          ),
          Pista1Card(),
          SizedBox(
            height: 20,
          ),
          Pista2Card(),
          SizedBox(
            height: 20,
          ),
          Pista3Card(),
          SizedBox(
            height: 20,
          ),
          Pista4Card(),
        ],
      ),
    );
  }
}
