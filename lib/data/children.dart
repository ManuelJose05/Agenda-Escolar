import 'package:prueba_tecnica_agenda/interfaces/Child.dart';
import 'package:prueba_tecnica_agenda/interfaces/ChildEvent.dart';
import 'package:prueba_tecnica_agenda/interfaces/EventCategory.dart';


//Listado de hijos de prueba para simular el comportamiento de la app
//Las imágenes se obtienen de una api aunque tenga por defecto una url
List<Child> children = [
  Child(
    id: 'c1',
    name: 'Lucía Martínez',
    age: 6,
    profileImageUrl: 'https://randomuser.me/api/portraits/lego/1.jpg',
    grade: '1°',
    classroom: 'A',
    tutorId: '1',
    observations: 'Alérgica al polen',
    events: [
      ChildEvent(
        id: 'e1',
        childId: 'c1',
        category: EventCategory.alimentacion,
        description: 'Desayunó cereal con leche y una manzana.',
        time: DateTime(2025, 6, 25, 9, 15),
      ),
      ChildEvent(
        id: 'e2',
        childId: 'c1',
        category: EventCategory.siesta,
        description: 'Durmió 1 hora y 20 minutos después del almuerzo.',
        time: DateTime(2025, 6, 25, 13, 45),
      ),
      ChildEvent(
        id: 'e8',
        childId: 'c1',
        category: EventCategory.siesta,
        description: 'Tomó una siesta breve de 30 minutos.',
        time: DateTime(2025, 6, 25, 16, 00),
      ),
      ChildEvent(
        id: 'e9',
        childId: 'c1',
        category: EventCategory.siesta,
        description: 'Descansó en la colchoneta después de la merienda.',
        time: DateTime(2025, 6, 25, 17, 15),
      ),
    ],
  ),
  Child(
    id: 'c2',
    name: 'Mateo Fernández',
    age: 7,
    profileImageUrl: 'https://randomuser.me/api/portraits/lego/2.jpg',
    grade: '2°',
    classroom: 'B',
    tutorId: '1',
    observations: 'Muy participativo',
    events: [
      ChildEvent(
        id: 'e3',
        childId: 'c2',
        category: EventCategory.siesta,
        description: 'Durmió profundamente durante 1 hora.',
        time: DateTime(2025, 6, 25, 14, 00),
      ),
      ChildEvent(
        id: 'e4',
        childId: 'c2',
        category: EventCategory.actividad,
        description: 'Participó en pintura con témperas.',
        time: DateTime(2025, 6, 25, 10, 30),
      ),
      ChildEvent(
        id: 'e10',
        childId: 'c2',
        category: EventCategory.siesta,
        description: 'Se recostó durante 40 minutos sin dormir completamente.',
        time: DateTime(2025, 6, 25, 15, 10),
      ),
      ChildEvent(
        id: 'e11',
        childId: 'c2',
        category: EventCategory.siesta,
        description: 'Durmió 50 minutos con música suave.',
        time: DateTime(2025, 6, 25, 17, 00),
      ),
    ],
  ),
  Child(
    id: 'c3',
    name: 'Sofía Ramírez',
    age: 5,
    profileImageUrl: 'https://randomuser.me/api/portraits/lego/3.jpg',
    grade: '1º',
    classroom: 'C',
    tutorId: '1',
    observations: 'Lleva gafas',
    events: [
      ChildEvent(
        id: 'e5',
        childId: 'c3',
        category: EventCategory.alimentacion,
        description: 'Comió arroz con pollo y jugo de naranja.',
        time: DateTime(2025, 6, 25, 12, 15),
      ),
      ChildEvent(
        id: 'e6',
        childId: 'c3',
        category: EventCategory.observacion,
        description: 'Estuvo un poco distraída durante la lectura.',
        time: DateTime(2025, 6, 25, 11, 45),
      ),
      ChildEvent(
        id: 'e12',
        childId: 'c3',
        category: EventCategory.siesta,
        description: 'Durmió 1 hora con su peluche.',
        time: DateTime(2025, 6, 25, 14, 10),
      ),
      ChildEvent(
        id: 'e13',
        childId: 'c3',
        category: EventCategory.siesta,
        description: 'Descansó en silencio durante 30 minutos.',
        time: DateTime(2025, 6, 25, 16, 30),
      ),
    ],
  ),
  Child(
    id: 'c4',
    name: 'Diego López',
    age: 6,
    profileImageUrl: 'https://randomuser.me/api/portraits/lego/4.jpg',
    grade: '1°',
    classroom: 'A',
    tutorId: '1',
    observations: 'Alergia a frutos secos',
    events: [
      ChildEvent(
        id: 'e7',
        childId: 'c4',
        category: EventCategory.deposicion,
        description: 'Tuvo una deposición normal antes de la siesta.',
        time: DateTime(2025, 6, 25, 13, 00),
      ),
      ChildEvent(
        id: 'e14',
        childId: 'c4',
        category: EventCategory.siesta,
        description: 'Se durmió rápidamente y descansó 45 minutos.',
        time: DateTime(2025, 6, 25, 14, 30),
      ),
      ChildEvent(
        id: 'e15',
        childId: 'c4',
        category: EventCategory.siesta,
        description: 'Durmió 1 hora tras escuchar un cuento.',
        time: DateTime(2025, 6, 25, 16, 00),
      ),
    ],
  ),
];
