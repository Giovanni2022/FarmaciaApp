import 'package:farmacia/constantes/productos.dart';
import 'package:farmacia/paginas/tienda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';

import '../constantes/const.dart';

class ProductoPagina extends StatefulWidget {
  //final dynamic song;
  const ProductoPagina({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductoPagina> createState() => _ProductoPaginaState();
}

class _ProductoPaginaState extends State<ProductoPagina> {
  int activoMenu1 = 0;
  int activoMenu2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: Color(0xff222f3e),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 10, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Listado de producto",
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30, top: 20),
                  child: Row(
                      children: List.generate(prod_1.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            activoMenu1 = index;
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              prod_1[index],
                              style: TextStyle(
                                  //color: Colors.grey,
                                  fontSize: 15,
                                  color: activoMenu1 == index
                                      ? Color(0xff222f3e)
                                      : Colors.grey,
                                  fontWeight: FontWeight.w600),
                            ),
                            SizedBox(
                              height: 3,
                            ),
                            activoMenu1 == index
                                ? Container(
                                    width: 10,
                                    height: 3,
                                    decoration: BoxDecoration(
                                        color: Color(0xff222f3e),
                                        borderRadius: BorderRadius.circular(5)),
                                  )
                                : Container()
                          ],
                        ),
                      ),
                    );
                  })),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 10,
          ),

          SingleChildScrollView(
            /////////////////////////////////////////////////////
            scrollDirection: Axis.horizontal,

            child: Padding(
              padding: const EdgeInsets.only(left: 55, right: 50),
              child: Column(
                  children: List.generate(prods.length, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: Tienda(
                                song: prods[index],
                              ),
                              type: PageTransitionType.scale));
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(prods[index]['img']),
                                  fit: BoxFit.cover),
                              color: Color(0xfff5f6fa),
                              borderRadius: BorderRadius.circular(20)),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          prods[index]['title'],
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff4b4b4b),
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            prods[index]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff4b4b4b),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        FlatButton(
                          child: Text("Agregar"),
                          color: Color(0xffe84118),
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),

          SizedBox(
            height: 20,
          ),

          //////////////////////////////////////////////////////////////
          /////bloque del mini menu

          /* Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              //crossAxisAlignment: CrossAxisAlignment.start,
              child: Padding(
                padding: const EdgeInsets.only(left: 30, top: 20),
                child: Row(
                    children: List.generate(prod_2.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 25),
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          activoMenu2 = index;
                        });
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            prod_2[index],
                            style: TextStyle(
                                //color: Colors.grey,
                                fontSize: 15,
                                color: activoMenu2 == index
                                    ? Colors.green
                                    : Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          activoMenu2 == index
                              ? Container(
                                  width: 10,
                                  height: 3,
                                  decoration: BoxDecoration(
                                      color: Colors.green,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              : Container()
                        ],
                      ),
                    ),
                  );
                })),
              ),
            ),
          ]),*/
          SizedBox(
            height: 20,
          ),

//segundo bloque

          /*SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Row(
                  children: List.generate(prods.length - 5, (index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 30),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          PageTransition(
                              alignment: Alignment.bottomCenter,
                              child: Tienda(
                                song: prods[index + 5],
                              ),
                              type: PageTransitionType.scale));
                    },
                    child: Column(
                      children: [
                        Container(
                          width: 180,
                          height: 180,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(prods[index + 5]['img']),
                                  fit: BoxFit.cover),
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          prods[index + 5]['title'],
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 180,
                          child: Text(
                            prods[index + 5]['description'],
                            maxLines: 1,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              })),
            ),
          ),*/
        ],
      ),
    );
  }
}
