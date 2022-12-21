import 'package:flutter/material.dart';

class monitor3 extends StatelessWidget {
  const monitor3({
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
                'https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
          ),
          SizedBox(height: 5),
          Text(
            'Don Raul Gonzalez',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
