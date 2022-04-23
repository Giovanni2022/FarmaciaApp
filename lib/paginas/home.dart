import 'package:farmacia/paginas/ProductoPagina.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';

import '../constantes/const.dart';

class PaginaPrincipal extends StatefulWidget {
  const PaginaPrincipal({Key? key}) : super(key: key);

  @override
  State<PaginaPrincipal> createState() => _PaginaPrincipalState();
}

class _PaginaPrincipalState extends State<PaginaPrincipal> {
  int activoMenu1 = 0;
  int activoMenu2 = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: Color(0xff222f3e),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sucursales",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Entypo.shop),
            ],
          ),
        ),
      ),
      body: bodyAppSpf(),
    );
  }

  Widget bodyAppSpf() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 35,
          ),
          SingleChildScrollView(
            /////////////////////////////////////////////////////
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Column(
                  children: List.generate(songs.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                            type: PageTransitionType.scale,
                            alignment: Alignment.bottomCenter,
                            child: ProductoPagina(),
                          ));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 300,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(songs[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f6fa),
                              borderRadius: BorderRadius.circular(30)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          songs[index]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black87,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        /*Container(
                          width: 180,
                          child: Text(
                            songs[index]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        )*/
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
