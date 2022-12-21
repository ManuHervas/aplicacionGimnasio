import 'package:flutter/material.dart';

class monitor2 extends StatelessWidget {
  const monitor2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: const [
          SizedBox(
            height: 20,
          ),
          CircleAvatar(
            maxRadius: 100,
            backgroundImage: NetworkImage('https://nolose.es/giselapulido.jpg'),
          ),
          SizedBox(height: 5),
          Text(
            'Doña Gisela Pulido',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
