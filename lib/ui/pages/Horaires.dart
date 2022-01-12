import 'package:flutter/material.dart';

import 'maps/GMap.dart';

class Horaires extends StatelessWidget {
  const Horaires({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Center(child: GMap()),
        Positioned(
          child: Container(
            height: size.height * 0.05,
            margin: EdgeInsets.all(25),
            child: Container(
              //padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    hintText: 'Rechercher une station',
                    hintStyle: TextStyle(color: Colors.grey)),
              ),
            ),
          ),
        )
      ]),
    );
  }
}
