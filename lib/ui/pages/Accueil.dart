import 'package:bonjour_ratp_clone/ui/pages/maps/GMap.dart';
import 'package:bonjour_ratp_clone/ui/pages/account/UserAccount.dart';
import 'package:flutter/material.dart';
import '../../constants.dart';

class Accueil extends StatefulWidget {
  const Accueil({Key? key}) : super(key: key);

  @override
  _AccueilState createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Center(
            child: InkWell(
          child: GMap(),
          onTap: () {},
        )),
        Positioned(
          bottom: 0,
          left: 10,
          top: size.height / 20,
          child: Column(
            children: [
              CircleAvatar(
                radius: 23,
                backgroundColor: Colors.white,
                child: Center(
                  child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                      },
                      icon: Icon(Icons.person, color: primaryColor, size: 30)),
                ),
              )
            ],
          ),
        ),
        Center(
          child: Container(
            height: size.height * 0.06,
            margin: EdgeInsets.all(25),
            child: Container(
              //padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: primaryColor),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Ou allons nous ?',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ),
        ),
      ]),
    );
  }

  // Route pour l'animation
  Route _createRoute() {
    return PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) =>
            const UserAccount(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.ease;

          final tween = Tween(begin: begin, end: end);
          final curvedAnimation = CurvedAnimation(
            parent: animation,
            curve: curve,
          );

          return SlideTransition(
            position: tween.animate(curvedAnimation),
            child: child,
          );
        });
  }
}
