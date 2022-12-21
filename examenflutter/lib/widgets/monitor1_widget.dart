import 'package:flutter/material.dart';

class monitor1 extends StatelessWidget {
  const monitor1({
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
                'https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
          ),
          SizedBox(height: 5),
          Text(
            'Don Rafael Nadal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
