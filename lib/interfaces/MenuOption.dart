//Interfaz de cada opción del menú horizontal

import 'package:flutter/material.dart';

class MenuOption {
  final String name;
  final Widget widget;
  bool isSelected = false;

  MenuOption({
    required this.name,
    required this.widget,
  });

}