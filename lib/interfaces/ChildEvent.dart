//Intefaz de Evento

import 'package:prueba_tecnica_agenda/interfaces/EventCategory.dart';

class ChildEvent {
  final String id;
  final String childId;             // Hijo (Child)
  final EventCategory category;     // Categoría del evento
  final String description;         // Texto libre
  final DateTime time;              // Hora del evento

  ChildEvent({
    required this.id,
    required this.childId,
    required this.category,
    required this.description,
    required this.time,
  });
}
