import 'package:examenflutter/widgets/calendarioReservas.dart';

import 'package:flutter/material.dart';

class ReservasScreen extends StatefulWidget {
  const ReservasScreen({Key? key}) : super(key: key);

  @override
  State<ReservasScreen> createState() => _ReservasScreenState();
}

class _ReservasScreenState extends State<ReservasScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Card(
        child: CalendarioWidget(),
      ),
    );
  }
}
