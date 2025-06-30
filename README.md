# Agenda Escolar

Aplicación Flutter que permite a los padres visualizar eventos diarios de sus hijos como alimentación, siesta, actividades, etc.

## Descripción del Proyecto
Este proyecto fue desarrollado con el objetivo de mostrar una pequeña aplicación para padres de familia donde puedan consultar información diaria sobre sus hijos en una guardería o escuela. El desarrollo se centró en la claridad del código, organización del proyecto y una experiencia visual agradable.

✔️ Arquitectura y organización
Se usó Flutter como framework principal.

El proyecto está organizado siguiendo una estructura clara por carpetas (presentation, provider, interfaces, widgets, etc.) para separar la lógica, los modelos y la interfaz de usuario.

Se utilizaron datos mock (simulados) almacenados en archivos locales para representar a los hijos y sus eventos.

✔️ Gestión del estado
Se usó Provider, una solución sencilla para manejar el estado global en Flutter.

Se creó un ChildrenProvider que gestiona la lista de hijos, el hijo seleccionado y la carga de imágenes de perfil desde un servicio (simulado).

También se creó un MenuProvider para controlar qué datos se está mostrando dentro del menú horizontal.

✔️ Diseño y experiencia de usuario
Se eligieron colores educativos y llamativos como amarillo, coral y azul para dar una sensación amigable y moderna.

La interfaz está pensada para ser fácil de usar: menús horizontales, selección de hijos por un desplegable, y listas de eventos con tarjetas limpias.

Se implementó una pantalla splash animada usando Lottie y animaciones en el texto principal para ofrecer una bienvenida más visual.

✔️ Funcionalidad principal
Listado de eventos diarios: se muestran por categoría (alimentación, siesta, actividad, etc.).

Selección de hijo: permite filtrar los eventos según el hijo elegido, o ver todos si no hay ninguno seleccionado.

Menú horizontal: para cambiar entre las diferentes secciones de la agenda.

✔️ Testing
Se incluyó un test automático (test/splash_screen_test.dart) para verificar que la pantalla de inicio (SplashScreen) muestra correctamente el texto “Kids & Clouds” y realiza la navegación después de unos segundos.
