import 'package:flutter/material.dart';

import '../../../constants.dart';

class Reglages extends StatelessWidget {
  const Reglages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.keyboard_arrow_left),
          iconSize: 20,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Mes réglages",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: size.height / 12,
            width: size.width,
            margin: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.notifications_none,
                          color: primaryColor,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          'Mes notifications',
                          style: TextStyle(
                              fontSize: 17,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: size.height / 12,
            width: size.width,
            margin: const EdgeInsets.only(left: 10.0, right: 10, top: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0, right: 18.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.meeting_room_outlined,
                          color: primaryColor,
                          size: 25,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Ma page d'accueil",
                          style: TextStyle(
                              fontSize: 17,
                              color: primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 15,
                      color: primaryColor,
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
