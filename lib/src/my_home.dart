import 'package:flutter/material.dart';
import 'list_view_personal.dart';
import 'list_view_profesional.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Variable que permitirá guardar el índice de la pantalla que se encuentra seleccionada.
  int _selectedIndex = 0;

  void _setIndex(int index) {
    // Esto permitirá modificar el índice de pantalla seleccionado
    setState(() {      
      _selectedIndex = index;
    });
  }

  /*
  Variable para guardar los dos widgets
  que se mostraran dependiendo del item que
  se encuentra activo en la bottom navigation bar
  */
  List<Widget> widgets = [
    const ListViewPersonal(),
    const ListViewProfesional()
  ];

  /*
  Variable para guardar los dos posibles fondos
  */
  List<AssetImage> backgrounds = [
    const AssetImage('assets/images/fondo9.png'),
    const AssetImage('assets/images/fondo10.png')
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(           
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: backgrounds[_selectedIndex],
              fit: BoxFit.cover
            )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Column(
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
              const Divider(
                color: Color.fromARGB(122, 21, 43, 100),
                thickness: 1,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              // Imagen del cod QR
              const Image(
                alignment: Alignment.center,
                height: 120,                    
                image: AssetImage(
                'assets/images/qr_linkedin.png'
                )
              ),
              const Text(
                'Escanear para ver perfil en LinkedIn',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromARGB(255, 91, 105, 142),
                  fontSize: 10,
                ),
              ),
              const Divider(
                color: Color.fromARGB(122, 21, 43, 100),
                thickness: 1,
                height: 30,
                indent: 20,
                endIndent: 20,
              ),
              widgets[_selectedIndex],
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
          currentIndex: _selectedIndex,
          onTap: _setIndex,
        ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}



