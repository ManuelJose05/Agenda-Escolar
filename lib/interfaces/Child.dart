//Interfaz de Hijo (Child)

import 'package:prueba_tecnica_agenda/interfaces/ChildEvent.dart';

class Child {
  final String id;
  final String name;
  final int age;
  String profileImageUrl;
  final String grade;
  final String classroom;
  final String tutorId; 
  final String observations;
  List<ChildEvent> events; //Listado de eventos (ChildEvent)

  Child({
    required this.id,
    required this.name,
    required this.age,
    required this.profileImageUrl,
    required this.grade,
    required this.classroom,
    required this.tutorId,
    required this.observations,
    required this.events
  });
}
