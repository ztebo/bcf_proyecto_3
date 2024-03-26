import 'package:flutter/material.dart';

class WidgetIntro extends StatelessWidget {

  /*
  Widget que cumple el objetivo de presentar la informacion inicial:
  imagen de perfil, nombre y apellidos, principales títulos
  a sitio de interés.
  Está armado con un widget column.

  Params:
  No tiene parámetros.
  */

  const WidgetIntro({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(
            'assets/images/foto_perfil.jpeg'
          ),                     
        ),
        Text(
          'Esteban Maldonado Toro',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 21, 44, 100),
            fontSize: 25,
          ),
        ),
        Text(
          'Especialista en Inteligencia de Negocios',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 21, 44, 100),
            fontSize: 14,
            fontWeight: FontWeight.bold 
          ),
        ),
        Text(
          'Magíster en Inteligencia Artificial',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 21, 44, 100),
            fontSize: 14,
          ),
        ),
        Text(
          'Ingeniero Civil en Minas',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color.fromARGB(255, 21, 44, 100),
            fontSize: 14,
          ),
        ),                   
      ],
    );
  }
}

