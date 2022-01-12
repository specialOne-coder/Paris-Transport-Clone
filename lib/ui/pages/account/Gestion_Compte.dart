import 'package:bonjour_ratp_clone/constants.dart';
import 'package:flutter/material.dart';

class GestionCompte extends StatelessWidget {
  const GestionCompte({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
          "Mon compte",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: size.height,
        color: primaryColor,
        child: Column(
          children: [
            Container(
              height: size.height / 4,
              margin: const EdgeInsets.only(left: 10.0, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mes identifiants",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Email ou identifiant",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Text(
                        "Email de l'utilisateur",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Text(
                      "Mot de passe",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        ".............",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: size.height / 4,
              margin: const EdgeInsets.only(left: 10.0, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Mes infos personnelles",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Modifier",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Nom et prénom",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                      child: Text(
                        "Noms de l'utilisateur",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                    Text(
                      "Né le ",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Text(
                        "Date de naissance",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                print('La Hauteur que fait lecran : ' +
                    size.height.toString() +
                    'La largeur que fait lecran : ' +
                    size.width.toString());
              },
              child: Container(
                height: size.height / 13,
                width: size.width,
                margin: const EdgeInsets.only(left: 10.0, right: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white),
                child: Center(
                  child: Text(
                    "Je me déconnecte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blueGrey),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              margin: const EdgeInsets.only(left: 10.0, right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                border:
                    Border.all(color: Colors.white, style: BorderStyle.solid),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "Supprimer mon compte",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
