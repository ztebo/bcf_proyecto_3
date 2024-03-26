import 'package:flutter/material.dart';
import 'widget_info_.dart';

class ListViewProfesional extends StatelessWidget {

  /*
  Widget destinado a presentar información en un List View
  compuesto de widgets del tipo  Widget Info (widget_info.dart)
  Este Widget en particular está armado con datos relativos exclusivamente
  con lo profesional, es decir, sobre conocimientos y experiencia.
  */

  const ListViewProfesional({
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
              icon: Icon(Icons.code_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Lenguajes de programación o consulta: Python, C#, Dart, C++, VBA, SQL'                 
            ),
            WidgetInfo(
              icon: Icon(Icons.computer_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Softwares o Frameworks: Excel, Word, Visual Studio Code, Power Apps, Sharepoint, Power Automate, Power BI (Microsoft Fabric), AutoCAD, Blender 3D, Unity, Unreal Engine, Notion, Smartsheet, @Risk, Figma, Miro, Photoshop, Illustrator, Git, Flutter',                      
            ),
            WidgetInfo(
              icon: Icon(Icons.school_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Competencias: Gestión de equipos, Control de Gestión, Inteligencia de Negocios, Planificación financiera, Diseño de productos digitales, Análisis de datos, Machine Learning, Natural Language Processing ',                    
            ),
          ],
        ),
      ),
    );
  }
}