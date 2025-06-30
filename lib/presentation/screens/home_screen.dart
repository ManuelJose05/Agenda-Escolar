import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/presentation/widgets/children_dropdown_widget.dart';
import 'package:prueba_tecnica_agenda/presentation/widgets/horizontal_menu.dart';
import 'package:prueba_tecnica_agenda/provider/menu_provider.dart';

//Screen del Home o Inicio
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(bottom: 2),
        toolbarHeight: MediaQuery.of(context).size.height * 0.08,
        actions: [
          ChildrenDropdownWidget(), //Widget que contiene el desplegable para seleccionar un hijo (child)
          ],
        title: Text('Luis López'), //Nombre del tutor, en este caso es fijo
        titleTextStyle: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontSize: 20,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true, //Extendemos el body para que el Gradient ocupe toda la pantalla (screen)
      body: Stack(
        children: [
          // Fondo con gradiente
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                tileMode: TileMode.clamp,
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [ 
                  Color(0xFFFF6B6B), // Coral cálido
                  Color(
                    0xFFFFD93D,
                  ), // Amarillo brillante
                ],
              ),
            ),
          ),

          // Contenido por encima
          SafeArea(
            child: _HomeView(), //Widget que contiene los widgets del home
            ),
        ],
      ),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MenuProvider>(context); //Declaramos el provider del menú para poder usar sus métodos y atributos
    Widget selectedWidget = provider.selectedWidget; //Creamos una variable para guardar el widget guardado en el provider al clicar un botón de una actividad

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Agenda Diaria',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(height: 50, child: HorizontalMenu()),
            SizedBox(height: 20),
            selectedWidget, //Aquí se muestra el widget asociado al botón de cada actividad. Se cambia el clicar en otro botón
          ],
        ),
      ),
    );
  }
}
