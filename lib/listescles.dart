import 'package:ams_mobile/button.dart';
import 'package:ams_mobile/clelist.dart';
import 'package:ams_mobile/conteneur.dart';
import 'package:ams_mobile/conteneurliste.dart';
import 'package:ams_mobile/conteneurmenu.dart';
import 'package:ams_mobile/listecompteurs.dart';
import 'package:ams_mobile/piedpage/home.dart';
import 'package:ams_mobile/rubriquelist.dart';
import 'package:flutter/material.dart';

class listcle extends StatefulWidget {
  const listcle({super.key});

  @override
  State<listcle> createState() => _listcleState();
}

class _listcleState extends State<listcle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 56,
        backgroundColor: Colors.white,
        actions: [
          InkWell(
            child: const Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 15, 0),
                child: Icon(
                  Icons.settings,
                  size: 25,
                  color: Colors.black,
                )),
            onTap: () {},
          )
        ],
        leading: const Padding(
          padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: const Text(
          "AMEXPERT",
          //textAlign: TextAlign.right,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              fontFamily: 'FuturaLT.ttf',
              color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          const conteneur(text: "CONSTAT D'ETAT DE LIEU"),
          Container(
            height: MediaQuery.of(context).size.height * 0.055,
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.only(top: 2),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: InkWell(
                    child: const button(
                        text: "LOGEMENT",
                        couleur1: Color.fromRGBO(17, 45, 194, 0.11), couleur2: Colors.transparent,),
                         onTap: () {
                        
                      },
                  ),
                ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        child: const button(
                        text: "PIECES",
                        couleur1: Color.fromRGBO(17, 45, 194, 0.11),couleur2: Colors.transparent,),
                         onTap: () {
                        
                      },
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        child: const button(
                        text: "RUBRIQUES",
                        couleur1: Color.fromRGBO(17, 45, 194, 0.11),couleur2: Colors.transparent,),
                         onTap: () {
                         Navigator.push(
                context, MaterialPageRoute(builder: (context) => const rubriqueliste()));
                      },
                      ),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: InkWell(
                        child: const button(
                        text: "CLES",
                        couleur1: Colors.white,couleur2: Colors.black,),
                         onTap: () {
                         Navigator.push(
                context, MaterialPageRoute(builder: (context) => const listcle()));
                      },
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(left: 5),
                    child: InkWell(
                      child: const button(text: "COMPTEUR", couleur1: Color.fromRGBO(17, 45, 194, 0.11),couleur2: Colors.transparent,),
                      onTap: () {
                         Navigator.push(
                context, MaterialPageRoute(builder: (context) => const listecompteur()));
                      },

                    ),
                    )
              ]),
            ),
          ),
          //Padding(padding: EdgeInsets.only()),
          InkWell(child: const conteneurmenu(text1: "CLES", nomb: "3", text2: "AJOUTER"),
          onTap: () {
             showDialog(
                context: context,
                builder: (ctx) => AlertDialog(
                   title: const Text("AJOUTER UNE CLE ", style: TextStyle(fontFamily: "futura.LT",fontSize: 14,fontWeight: FontWeight.w800),textAlign: TextAlign.left,
                  ),
                  content: SingleChildScrollView(
                    child: ListBody(
                    children: [
                      Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              "CLE",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.08,
          margin: const EdgeInsets.only(left: 3, right: 3, ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: Align(
            alignment: Alignment.center,
            child: TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Salon Principal",
                contentPadding: EdgeInsets.only(left: 9,),
                hintStyle:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
                    
                
              ),
            ),
          ),
        ),
                  Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              "NOMBRE",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.08,
          margin: const EdgeInsets.only(left: 5, right: 5, ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "2",
             contentPadding: EdgeInsets.only(left: 9,),
              hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              
            ),
          ),
        ),

                  Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              "ETAT",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.width * 0.08,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "CLE NEUVE",
             contentPadding: EdgeInsets.only(left: 9,),
              hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              
            ),
          ),
        ),
                  Container(
            margin: const EdgeInsets.only(left: 11),
            child: const Text(
              "COMMENTAIRE",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w900),
            )),
        Container(
          height: MediaQuery.of(context).size.height * 0.08,
          width: MediaQuery.of(context).size.width * 0.28,
          margin: const EdgeInsets.only(left: 5, right: 5, top: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
                width: 1.0, color: const Color.fromARGB(218, 219, 219, 215)),
          ),
          child: TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              hintText: "Clé du Salon Principal",
             contentPadding: EdgeInsets.only(left: 9,),
              hintStyle:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
              
            ),
          ),
        ),
        InkWell(
          child: Container(
            margin: const EdgeInsets.only(left: 5, right: 5, top: 10),
            height: MediaQuery.of(context).size.height * 0.04,
            width: MediaQuery.of(context).size.width * 0.08,
            decoration: BoxDecoration(
              color: const Color(0xFF333333),
              borderRadius: BorderRadius.circular(6),
            ),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "ENREGISTRER",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                )),
          ),
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => const home()));
          },
        ),

                    ]
                    )
                    ),
                ));
          },),
          Column(
              children: cle_list.map((e) {
                return conteneurliste(
                  piece: e['piece'],
                  nbrecle: e['nbrecle'],
                  
                );
              }).toList(),
          )
        ],
      ),
    );
  }
}
