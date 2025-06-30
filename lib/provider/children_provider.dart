import 'package:flutter/widgets.dart';
import 'package:prueba_tecnica_agenda/interfaces/Child.dart';
import 'package:prueba_tecnica_agenda/services/user_service.dart';

//Provider de los hijos (Children) con ChangeNotifier para que se actualice la pantalla (screen)
class ChildrenProvider with ChangeNotifier {
  List<Child> children = []; //Listado de hijos (Child)
  Child? selectedChild; //Variable para guardar el hijo seleccionado del desplegable
  final UserService userService = UserService(); //Servicio de usuario

  //Función que establece el hijo seleccionado
  void selectChild(Child child) {
    selectedChild = child;
    notifyListeners();
  }

  // Función para establecer la lista de hijos y asignarles una imagen desde la API
  void setChildren(List<Child> childreen) async {
    children = childreen;
    for (Child child in childreen) {
      final img = await userService.getProfileImage();
      child.profileImageUrl = img; 
    }
    notifyListeners();
  }
}