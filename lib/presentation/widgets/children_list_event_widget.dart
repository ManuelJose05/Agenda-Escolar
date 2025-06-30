import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/interfaces/Child.dart';
import 'package:prueba_tecnica_agenda/interfaces/ChildEvent.dart';
import 'package:prueba_tecnica_agenda/interfaces/EventCategory.dart';
import 'package:prueba_tecnica_agenda/presentation/widgets/child_card.dart';
import 'package:prueba_tecnica_agenda/provider/children_provider.dart';

// Widget que muestra la lista de eventos de una categoría, filtrando por hijo si está seleccionado y la categoría de la actividad
class ChildrenListEventWidget extends StatelessWidget {
  final EventCategory category;
  const ChildrenListEventWidget({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Obtenemos el provider para acceder a los hijos (Children) y su información
    final provider = Provider.of<ChildrenProvider>(context);

    // Creamos la lista de eventos a mostrar según si hay un hijo seleccionado o no
    List<ChildEvent> showOptions = provider.selectedChild == null
        ? provider.children
            .expand((child) => child.events)
            .where((event) => event.category == category)
            .toList()
        : provider.selectedChild!.events
            .where((event) => event.category == category)
            .toList();

    // Ordenamos los eventos del más reciente al más antiguo
    showOptions.sort((a, b) => b.time.compareTo(a.time));

    // Mostramos un mensaje si no hay eventos, o una lista de tarjetas si los hay
    return showOptions.isNotEmpty
        ? ListView.builder(
            itemCount: showOptions.length,
            shrinkWrap: true,
            physics: const ScrollPhysics(),
            itemBuilder: (context, index) {
              // Buscamos el hijo correspondiente al evento
              final Child? child = provider.children.firstWhere(
                (c) => c.id == showOptions[index].childId,
              );
              if (child == null) return const SizedBox.shrink();
              return ChildCard(child: child, event: showOptions[index]);
            },
          )
        : const Text(
            'Sin datos',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          );
  }
}
