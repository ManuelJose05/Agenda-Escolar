import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:prueba_tecnica_agenda/interfaces/Child.dart';
import 'package:prueba_tecnica_agenda/presentation/screens/home_screen.dart';
import 'package:prueba_tecnica_agenda/presentation/screens/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/provider/children_provider.dart';
import 'package:prueba_tecnica_agenda/provider/menu_provider.dart';
import 'package:prueba_tecnica_agenda/services/user_service.dart';

// Mock del provider de hijos para los tests
class MockChildrenProvider extends ChangeNotifier implements ChildrenProvider {
  @override
  void setChildren(children) {} // No hace nada

  @override
  List<Child> children = []; // Lista vacía para evitar errores

  @override
  Child? selectedChild;

  @override
  void selectChild(Child child) {}

  @override
  UserService get userService => throw UnimplementedError();
}

// Mock del provider del menú para los tests
class MockMenuProvider extends ChangeNotifier implements MenuProvider {
  @override
  int selectedItem = -1;

  @override
  Widget selectedWidget = const SizedBox.shrink(); // Widget vacío

  @override
  void setSelectedWidget(Widget widget) {}
}

void main() {
  testWidgets('SplashScreen muestra el texto Kids & Clouds y navega', (tester) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<ChildrenProvider>(
            create: (_) => MockChildrenProvider(),
          ),
          ChangeNotifierProvider<MenuProvider>(
            create: (_) => MockMenuProvider(),
          ),
        ],
        builder: (context, _) => MaterialApp(
          routes: {
            'home': (_) => HomeScreen(),     // Ruta destino tras Splash
            'splash': (_) => SplashScreen(), // Pantalla inicial
          },
          initialRoute: 'splash',
        ),
      ),
    );

    // Avanza el tiempo hasta que pase el delay de 5 segundos
    await tester.pump(Duration(seconds: 5));

    // Verifica que el texto se muestre en pantalla
    expect(find.text('Kids & Clouds'), findsOneWidget);

    // Espera que se complete la navegación
    await tester.pumpAndSettle();
  });
}
