import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WidgetInfo extends StatelessWidget {

  /*
  Widget destinado a presentar información de variada índole.
  El objetivo es usarlo dentro de un widget Column o un ListView.
  Requiere de un ícono y una cadena de texto.

  Params:
  icon: variable widget del tipo Icon
  textContent: texto a ser desplegado en el widget
  */
  
  final Icon icon;
  final String textContent;
    
  const WidgetInfo({
    super.key,
    required this.icon,
    required this.textContent,
    
  });

  @override
  Widget build(BuildContext context) {
    // Uso del widget Card
    return Card(
      shadowColor: Colors.grey,      
      borderOnForeground: false,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25)
      ),
      margin: const EdgeInsets.all(4),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            const SizedBox(width: 20,),
            Flexible(
              child: Text(
                textContent,
                style: const TextStyle(
                  color: Color.fromARGB(255, 21, 44, 100)
                ),
                softWrap: true,
                maxLines: 10,
                textAlign: TextAlign.start,
              ),
            ),
          ],
        ),
      ),
    );
  }
}