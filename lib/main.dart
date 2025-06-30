import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/presentation/screens/home_screen.dart';
import 'package:prueba_tecnica_agenda/presentation/screens/splash_screen.dart';
import 'package:prueba_tecnica_agenda/provider/children_provider.dart';
import 'package:prueba_tecnica_agenda/provider/menu_provider.dart';

// Punto de entrada principal de la aplicación
void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Asegura que los plugins estén inicializados
  runApp(AppState()); // Lanza la app
}

// Widget que contiene los providers de la aplicación
class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MenuProvider()), // Provider del menú
        ChangeNotifierProvider(create: (context) => ChildrenProvider()), // Provider de los hijos
      ],
      child: MainApp(),
    );
  }
}

// Widget principal de la app con configuración de rutas
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(), // Tema claro por defecto
      debugShowCheckedModeBanner: false, // Oculta la etiqueta de debug
      initialRoute: 'splash', // Ruta inicial
      routes: {
        'home': (_) => HomeScreen(), // Ruta al home
        'splash': (_) => SplashScreen(), // Ruta al splash
      },
    );
  }
}
