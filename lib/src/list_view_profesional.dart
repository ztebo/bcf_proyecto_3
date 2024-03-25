import 'package:flutter/material.dart';
import 'content_widget.dart';

class ListViewProfesional extends StatelessWidget {
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
            ContentWidget(
              icon: Icon(Icons.code_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Lenguajes de programación o consulta: Python, C#, Dart, C++, VBA, SQL'                 
            ),
            ContentWidget(
              icon: Icon(Icons.computer_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Softwares o Frameworks: Excel, Word, Visual Studio Code, Power Apps, Sharepoint, Power Automate, Power BI (Microsoft Fabric), AutoCAD, Blender 3D, Unity, Unreal Engine, Notion, Smartsheet, @Risk, Figma, Miro, Photoshop, Illustrator, Git, Flutter',                      
            ),
            ContentWidget(
              icon: Icon(Icons.school_rounded, color:  Color.fromARGB(255, 21, 44, 100)),
              textContent: 'Competencias: Gestión de equipos, Control de Gestión, Inteligencia de Negocios, Planificación financiera, Diseño de productos digitales, Análisis de datos, Machine Learning, Natural Language Processing ',                    
            ),
          ],
        ),
      ),
    );
  }
}