import 'package:flutter/material.dart';

import '../../constants.dart';

class Titres extends StatelessWidget {
  const Titres({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.api_sharp),
            iconSize: 20,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text(
          "Titres de transport",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
      ),
    );
  }
}
