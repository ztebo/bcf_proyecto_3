import 'package:flutter/material.dart';
import 'my_home.dart';

/*
El código de la app está organizado según la siguiente estructura:

- main.dart
  - app.dart
    - my_home.dart
      - widget_intro.dart
      - list_view_personal.dart
        - widget_info.dart
      - list_view_profesional.dart
        - widget_info.dart

En este archivo se encuentra modificada la fuente utilizada en la app
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        // Configuración de la fuente personalizada     
        fontFamily: 'Josefin Sans Plus Rounded',
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Aplicación proyecto 3 BC UDD Flutter'),
    );
  }
}

