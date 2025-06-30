import 'package:flutter/material.dart';
import 'package:prueba_tecnica_agenda/interfaces/Child.dart';
import 'package:prueba_tecnica_agenda/interfaces/ChildEvent.dart';

// Tarjeta que muestra la información de un hijo (Child) junto con un evento relacionado (ChildEvent)
class ChildCard extends StatelessWidget {
  final Child child; // Hijo (Child)
  final ChildEvent event; // Evento relacionado con el niño (ChildEvent)

  const ChildCard({super.key, required this.child, required this.event});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        // Estilo de fondo y sombra de la tarjeta
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF556270), // sombra gris azulada
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Row(
          children: [
            // Avatar del niño con imagen de perfil
            CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(child.profileImageUrl),
              backgroundColor: Colors.grey.shade200,
            ),
            const SizedBox(width: 16),
            // Información del hijo (Child) y del evento (ChildEvent)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Nombre del niño
                  Text(
                    child.name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF556270),
                    ),
                  ),
                  const SizedBox(height: 6),
                  // Fecha y hora del evento
                  Text(
                    '${event.time.hour.toString().padLeft(2, '0')}:${event.time.minute.toString().padLeft(2, '0')} - ${event.time.day}/${event.time.month}/${event.time.year}',
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 4),
                  // Descripción del evento
                  Text(
                    event.description,
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey.shade800,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
