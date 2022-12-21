import 'package:examenflutter/screens/reservas_screen.dart';
import 'package:examenflutter/themes/app_themes_screen15.dart';
import 'package:flutter/material.dart';

class Pista4Card extends StatelessWidget {
  const Pista4Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            const FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://th.bing.com/th/id/R.d61add02fa935dca99018927f1b6bee2?rik=7J%2f2PYYYfSNEFA&riu=http%3a%2f%2fpolideportivogenil.es%2fWebRoot%2fGoogle2%2fShops%2fcon1043997%2f5046%2f51F3%2fC62B%2fC68C%2f40C0%2f52DF%2fD034%2fF9DB%2fext_3_ml.JPG&ehk=SLS0Mevn0Iyi9UN%2b%2f4gGMB4oUgCaM0wXYOPdCdZSGjU%3d&risl=&pid=ImgRaw&r=0'),
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
              child: const Text(
                'Pista de Futbol',
                style: TextStyle(color: AppTheme.primary),
              ),
            ),
            Container(
              alignment: AlignmentDirectional.centerStart,
              padding: const EdgeInsets.only(left: 20, top: 10, bottom: 5),
              child: const Text(
                'Ex Lorem id officia enim incididunt adipisicing qui ut elit esse excepteur. Dolore culpa eiusmod voluptate laborum voluptate. Pariatur duis occaecat ipsum deserunt aute magna tempor adipisicing non. Enim sint exercitation amet cillum tempor aliqua pariatur cillum quis sunt excepteur. Nulla nostrud id consequat magna veniam ex aute. Dolore anim exercitation cillum ex do minim.',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                alignment: AlignmentDirectional.centerEnd,
                padding: const EdgeInsets.only(right: 20, top: 5, bottom: 10),
                child: TextButton(
                    onPressed: () {
                      final route = MaterialPageRoute(
                          builder: (context) => const ReservasScreen());
                      Navigator.push(context, route);
                    },
                    child: const Text(
                      'Reservar',
                      style: TextStyle(
                        color: AppTheme.primary,
                        decoration: TextDecoration.underline,
                      ),
                    ))),
          ],
        ));
  }
}
