import 'package:avocat/widgets/apropos.dart';
import 'package:flutter/material.dart';
import 'package:avocat/screens/villes_screen.dart';
import 'register.dart';
import 'apropos.dart';

class GridScreen extends StatelessWidget {
  Widget buildServiceContainer(
    BuildContext context,
    String title,
    Image image,
    Color color,
    Function serviceRoute,
  ) {
    return InkWell(
      onTap: serviceRoute,
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                color.withOpacity(0.9),
                color,
              ],
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
            borderRadius: BorderRadius.circular(10)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 90,
              height: 50,
              child: image,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(15),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2.7,
        maxCrossAxisExtent: 300,
      ),
      children: [
        buildServiceContainer(
          context,
          'Information',
          Image.asset('assets/images/info3.png'),
          Color(0x7CBEB1),
          () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => VilleScreen(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'Prendre un DRV',
          Image.asset('assets/images/rdv.png'),
          Color(0xBF9C65),
          () {

            
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => RegisterAvocat(),
              ),
            );
          },
        ),
        buildServiceContainer(
          context,
          'A propos',
          Image.asset('assets/images/apropo.png'),
          Color(0x7D71B1),
          () {

            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Propos(),
              ),
            );

          },
        ),
        // buildServiceContainer(
        //   context,
        //   'Avis',
        //   Image.asset('assets/images/info.png'),
        //   Colors.black26,
        //   () {},
        // ),
        buildServiceContainer(
          context,
          'Abonnement',
          Image.asset('assets/images/abonnement.png', width: 800,height: 1050,fit:BoxFit.fill),
          Color(0x5773A0),
          () {},
        ),
      ],
    );
  }
}
