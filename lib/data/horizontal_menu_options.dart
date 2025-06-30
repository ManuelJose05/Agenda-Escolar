import 'package:prueba_tecnica_agenda/interfaces/EventCategory.dart';
import 'package:prueba_tecnica_agenda/interfaces/MenuOption.dart';
import 'package:prueba_tecnica_agenda/presentation/widgets/children_list_event_widget.dart';

//Lista de opciones del menú horizontal
//Indicamos el nombre o texto que veremos en cada botón y el widget que se mostrará al pinchar en dicho botón
//Pasamos por parámetros el tipo de actividad que es para filtrar los eventos
List<MenuOption> menuOptions = [
  MenuOption(
    name: 'Actividades',
    widget: ChildrenListEventWidget(category: EventCategory.actividad),
  ),
  MenuOption(
    name: 'Siestas',
    widget: ChildrenListEventWidget(category: EventCategory.siesta),
  ),
  MenuOption(
    name: 'Alimentación',
    widget: ChildrenListEventWidget(category: EventCategory.alimentacion),
  ),
  MenuOption(
    name: 'Deposición',
    widget: ChildrenListEventWidget(category: EventCategory.deposicion),
  ),
  MenuOption(
    name: 'Observación',
    widget: ChildrenListEventWidget(category: EventCategory.observacion),
  ),
];
