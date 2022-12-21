import 'package:examenflutter/widgets/monitor1_widget.dart';
import 'package:examenflutter/widgets/monitor2_widget.dart';
import 'package:examenflutter/widgets/monitor3_widget%20.dart';
import 'package:examenflutter/widgets/monitor4_widget.dart';
import 'package:flutter/material.dart';

class MonitoresScreen extends StatelessWidget {
  MonitoresScreen({Key? key}) : super(key: key);

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
        children: const [
          monitor1(),
          SizedBox(
            height: 30,
          ),
          monitor2(),
          SizedBox(
            height: 30,
          ),
          monitor3(),
          SizedBox(
            height: 30,
          ),
          monitor4(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
