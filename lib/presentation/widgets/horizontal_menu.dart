import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/data/horizontal_menu_options.dart';
import 'package:prueba_tecnica_agenda/provider/menu_provider.dart';

// Widget para mostrar el menú horizontal con botones que cambian el contenido de la pantalla de inicio (Home)
class HorizontalMenu extends StatelessWidget {
  const HorizontalMenu({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el provider del menú para saber qué opción está seleccionada
    final provider = Provider.of<MenuProvider>(context);

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: menuOptions.length,
      itemBuilder: (context, index) {
        final option = menuOptions[index];
        final isSelected = provider.selectedItem == index;

        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            decoration: BoxDecoration(
              // Cambiamos el color si está seleccionada o no
              color: isSelected
                  ? const Color(0xFFFFD93D) // color resaltado (amarillo)
                  : const Color(0xFFF6F8FA), // color claro neutro
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                if (isSelected)
                  BoxShadow(
                    color: const Color(0xFFFFD93D), // sombra si está seleccionado
                    blurRadius: 3,
                  ),
              ],
            ),
            child: TextButton(
              style: TextButton.styleFrom(
                foregroundColor: isSelected
                    ? Colors.white // texto blanco si está seleccionado
                    : const Color(0xFF556270), // gris azulado si no lo está
                textStyle: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              onPressed: () {
                // Cambia el widget mostrado y el índice seleccionado
                provider.selectedItem = index;
                provider.setSelectedWidget(option.widget);
              },
              child: Text(option.name),
            ),
          ),
        );
      },
    );
  }
}
