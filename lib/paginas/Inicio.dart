import 'package:farmacia/constantes/const.dart';
import 'package:farmacia/constantes/productos.dart';
import 'package:farmacia/paginas/principal.dart';
import 'package:farmacia/paginas/tienda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:farmacia/paginas/home.dart';
import 'package:page_transition/page_transition.dart';

import '../constantes/const.dart';

class Inicio extends StatefulWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  int _paginaActual = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: Color(0xfff5f6fa),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          ),
        ),
      ),
      body: Logo(),
    );
  }

  Widget Logo() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            /////////////////////////////////////////////////////
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30, top: 90),
              child: Column(
                  children: List.generate(songs2.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            child: PrincipalApp(),
                          ));
                    },
                    child: Column(
                      children: [
                        Text(
                          songs2[index]['title'],
                          style: TextStyle(
                              fontSize: 25,
                              color: Color(0xff12CBC4),
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(songs2[index]['img']),
                                  fit: BoxFit.scaleDown),
                              color: Color(0xfff5f6fa),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        /*FlatButton(
                        child: Text("Ingresar"),
                        color: Color(0xffe84118),
                        onPressed: () {
                          /*Navigator.of(context).pop();*/
                        },
                      ),*/
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
        ],
      ),
    );
  }
}
