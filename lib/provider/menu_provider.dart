import 'package:flutter/material.dart';

// Provider para gestionar el estado del menú horizontal
class MenuProvider with ChangeNotifier {
  int selectedItem = -1; // Índice del ítem seleccionado
  Widget? _selectedWidget; // Widget asociado al ítem seleccionado

  // Getter que devuelve el widget seleccionado o un texto por defecto
  Widget get selectedWidget => _selectedWidget == null 
      ? Text('Selecciona una opción') 
      : _selectedWidget!;

  // Establece el widget seleccionado y notifica a los listeners
  void setSelectedWidget(Widget widget) {
    _selectedWidget = widget;
    notifyListeners();
  }
}
