import 'package:flutter/material.dart';

class monitor4 extends StatelessWidget {
  const monitor4({
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
            backgroundImage: NetworkImage(
                'https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
          ),
          SizedBox(height: 5),
          Text(
            'Doña Mireia Belmonte',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
