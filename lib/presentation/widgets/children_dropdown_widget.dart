import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/provider/children_provider.dart';

// Dropdown que permite seleccionar a un hijo (Child) de la lista
class ChildrenDropdownWidget extends StatelessWidget {
  const ChildrenDropdownWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el provider con la lista de hijos (Children)
    final provider = Provider.of<ChildrenProvider>(context);

    // Generamos las opciones del dropdown a partir de los hijos disponibles
    final options = provider.children.map(
      (e) => DropdownMenuEntry(
        value: e,
        label: '${e.name} - ${e.grade}${e.classroom}',
      ),
    ).toList();

    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: DropdownMenu(
        width: MediaQuery.of(context).size.width * 0.5,
        hintText: 'Selecciona un niño',
        leadingIcon: const Icon(Icons.child_care_outlined, color: Colors.black),
        dropdownMenuEntries: options,
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide.none,
          ),
        ),
        // Estilo del menú desplegable
        menuStyle: MenuStyle(
          backgroundColor: WidgetStateProperty.all(Colors.white),
          shape: WidgetStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        // Al seleccionar un hijo (Child), se actualiza en el provider
        onSelected: (value) {
          if (value != null) provider.selectChild(value);
        },
      ),
    );
  }
}
