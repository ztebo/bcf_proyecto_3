import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'content_widget.dart';
import 'list_view_personal.dart';
import 'package:flutter/widgets.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(           
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/fondo3.png'),
              fit: BoxFit.cover
            )
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
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
              ),
              Divider(
                color: Color.fromARGB(122, 21, 43, 100),
                thickness: 1,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              // Imagen del cod QR
              Image(
                    alignment: Alignment.center,
                    height: 120,                    
                    image: AssetImage(
                    'assets/images/qr_linkedin.png'
                  )) ,
              Divider(
                color: Color.fromARGB(122, 21, 43, 100),
                thickness: 1,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              ListiViewPersonal(),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
        BottomNavigationBar(
          unselectedItemColor: Colors.white70,
          selectedItemColor: Colors.white,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
          backgroundColor: Colors.blue,          
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Datos personales'
            ) ,
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              label: 'Información profesional'
            )
          ],
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



