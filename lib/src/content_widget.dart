import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContentWidget extends StatelessWidget {
  
  final Icon icon;
  final String textContent;
  
  
  const ContentWidget({
    super.key,
    required this.icon,
    required this.textContent,
    
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(24, 74, 137, 255),
          borderRadius: BorderRadius.circular(7),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(            
            mainAxisSize: MainAxisSize.min,                      
            children: [
              icon,
              const SizedBox(width: 10,),
              Flexible(
                child: Text(                
                  textContent,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 21, 44, 100)
                  ),
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.start,
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}