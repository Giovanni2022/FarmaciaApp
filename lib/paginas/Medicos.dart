import 'package:farmacia/constantes/productos.dart';
import 'package:farmacia/paginas/tienda.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:page_transition/page_transition.dart';

class Medicos extends StatefulWidget {
  const Medicos({Key? key}) : super(key: key);

  @override
  State<Medicos> createState() => _MedicosState();
}

class _MedicosState extends State<Medicos> {
  //int activoMenu2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f6fa),
      appBar: AppBar(
        backgroundColor: Color(0xff222f3e),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 20, right: 60),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Datos del medico ",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Icon(Entypo.user),
            ],
          ),
        ),
      ),
    );
  }
}
