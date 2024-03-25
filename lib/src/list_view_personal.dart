import 'package:flutter/material.dart';
import 'content_widget.dart';

class ListiViewPersonal extends StatelessWidget {
  const ListiViewPersonal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Scrollbar(
        thumbVisibility: true,
        trackVisibility: true,
        interactive: true,
        child: ListView(
          clipBehavior: Clip.hardEdge,
          physics: const BouncingScrollPhysics(),
          // Para hacer que el contenido del listview no se desborde
          shrinkWrap: true,                  
          children: const [                    
            ContentWidget(
              icon: Icon(Icons.phone, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '+569 9344 89XX',                      
            ),
            ContentWidget(
              icon: Icon(Icons.email, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'mtesteban@outlook.com',                      
            ),
            ContentWidget(
              icon: Icon(Icons.cake, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '33 años',                    
            ),                  
            ContentWidget(
              icon: Icon(Icons.house, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Domicilio en Santiago, Chile',                    
            ),
            ContentWidget(
              icon: Icon(Icons.airplanemode_on, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Disponible para traslado a regiones',                    
            ),
            ContentWidget(
              icon: Icon(Icons.car_repair, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Licencia de conducir clase B',                    
            ),
            ContentWidget(
              icon: Icon(Icons.health_and_safety, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Salud compatible con altura geográfica',                      
            ),
            ContentWidget(
              icon: Icon(Icons.timelapse, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: '8 años de experiencia laboral',                      
            ),
          ],
        ),
      ),
    );
  }
}