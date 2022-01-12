import 'package:flutter/material.dart';
import 'package:bonjour_ratp_clone/constants.dart';
import 'package:bonjour_ratp_clone/ui/pages/Accueil.dart';
import 'package:bonjour_ratp_clone/ui/pages/Horaires.dart';
import 'package:bonjour_ratp_clone/ui/pages/Plans.dart';
import 'package:bonjour_ratp_clone/ui/pages/Titres.dart';
import 'package:bonjour_ratp_clone/ui/pages/Trafic.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectIndex = 0;
  List<Widget> _widgetOptions = <Widget>[
    Accueil(),
    Horaires(),
    Plans(),
    Trafic(),
    Titres(),
  ];

  void onItemTap(int index) {
    setState(() {
      selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: _widgetOptions.elementAt(selectIndex)),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey[800],
        showUnselectedLabels: true,
        fixedColor: primaryColor,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), label: 'Accueil'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded), label: 'Horaires'),
          BottomNavigationBarItem(
              icon: Icon(Icons.map_outlined), label: 'Plans'),
          BottomNavigationBarItem(icon: Icon(Icons.traffic), label: 'Trafic'),
          BottomNavigationBarItem(
              icon: Icon(Icons.space_dashboard_sharp), label: 'Titres')
        ],
        currentIndex: selectIndex,
        onTap: onItemTap,
      ),
    );
  }
}
