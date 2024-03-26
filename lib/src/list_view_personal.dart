import 'package:flutter/material.dart';
import 'widget_info_.dart';

class ListViewPersonal extends StatelessWidget {

  /*
  Widget destinado a presentar información en un List View
  compuesto de widgets del tipo  Widget Info (widget_info.dart)
  Este Widget en particular está armado con datos personales.
  */

  const ListViewPersonal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Scrollbar(
        trackVisibility: true,
        interactive: true,
        child: ListView(
          clipBehavior: Clip.hardEdge,
          physics: const BouncingScrollPhysics(),
          // Para hacer que el contenido del listview no se desborde
          shrinkWrap: true,                  
          children: const [                    
            WidgetInfo(
              icon: Icon(Icons.phone, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '+569 9344 89XX',                      
            ),
            WidgetInfo(
              icon: Icon(Icons.email, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'mtesteban@outlook.com',                      
            ),
            WidgetInfo(
              icon: Icon(Icons.cake, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '33 años',                    
            ),                  
            WidgetInfo(
              icon: Icon(Icons.house, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Domicilio en Santiago, Chile',                    
            ),
            WidgetInfo(
              icon: Icon(Icons.airplanemode_on, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Disponible para traslado a regiones',                    
            ),
            WidgetInfo(
              icon: Icon(Icons.car_repair, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Licencia de conducir clase B',                    
            ),
            WidgetInfo(
              icon: Icon(Icons.health_and_safety, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Salud compatible con altura geográfica',                      
            ),
            WidgetInfo(
              icon: Icon(Icons.timelapse, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '8 años de experiencia laboral',                      
            ),
          ],
        ),
      ),
    );
  }
}