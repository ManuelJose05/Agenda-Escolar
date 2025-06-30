# Agenda Escolar

Aplicación Flutter que permite a los padres visualizar eventos diarios de sus hijos como alimentación, siesta, actividades, etc.

## Descripción del Proyecto
Este proyecto fue desarrollado con el objetivo de mostrar una pequeña aplicación para padres de familia donde puedan consultar información diaria sobre sus hijos en una guardería o escuela. El desarrollo se centró en la claridad del código, organización del proyecto y una experiencia visual agradable.

### Arquitectura y organización
Se usó Flutter como framework principal.

El proyecto está organizado siguiendo una estructura clara por carpetas (presentation, provider, interfaces, widgets, etc.) para separar la lógica, los modelos y la interfaz de usuario.

Se utilizaron datos mock (simulados) almacenados en archivos locales para representar a los hijos y sus eventos.

### Gestión del estado
Se usó Provider, una solución sencilla para manejar el estado global en Flutter.

Se creó un ChildrenProvider que gestiona la lista de hijos, el hijo seleccionado y la carga de imágenes de perfil desde un servicio (simulado).

También se creó un MenuProvider para controlar qué datos se está mostrando dentro del menú horizontal.

### Diseño y experiencia de usuario
Se eligieron colores educativos y llamativos como amarillo, coral y azul para dar una sensación amigable y moderna.

La interfaz está pensada para ser fácil de usar: menús horizontales, selección de hijos por un desplegable, y listas de eventos con tarjetas limpias.

Se implementó una pantalla splash animada usando Lottie y animaciones en el texto principal para ofrecer una bienvenida más visual.

### Funcionalidad principal
Listado de eventos diarios: se muestran por categoría (alimentación, siesta, actividad, etc.).

Selección de hijo: permite filtrar los eventos según el hijo elegido, o ver todos si no hay ninguno seleccionado.

Menú horizontal: para cambiar entre las diferentes secciones de la agenda.

### Testing
Se ha implementado un **test de widget** básico para comprobar que la pantalla de carga (`SplashScreen`) muestra correctamente el texto **"Kids & Clouds"** y realiza la navegación a la pantalla principal (`HomeScreen`) tras unos segundos.

Esta prueba sirve para:
- Verificar que el texto se renderiza correctamente.
- Confirmar que la animación y la lógica de redirección funcionan como se espera.
- Asegurar que el flujo de arranque de la app es estable ante futuros cambios.

El test está ubicado en **test/splash_screen_test.dart**

## Requisitos previos
- Tener instalado Flutter SDK
- Tener configurado un editor (VSCode o Android Studio)
- Tener un emulador o dispositivo físico conectado

## Configuración e instalación del Proyecto

1. **Clonar el repositorio**
   ```bash
   git clone https://github.com/ManuelJose05/Agenda-Escolar.git
   cd Agenda-Escolar
   
2. **Instalar dependencias**
   ```bash
   flutter pub get

4. **Ejecutar la aplicación**
   ```bash
   flutter run

5. **Ejecutar los test (opcional)**
   ```bash
   flutter test

## Vista Previa App

### Pantalla de carga (SplashScreen)
Animación inicial con el título "Kids & Clouds" y una animación Lottie personalizada.

<img src="https://github.com/user-attachments/assets/4f8fdc4d-81ea-4f88-a9c7-4f796b2ca976" width="400"/>

### Pantalla Principal
Vista general de la agenda diaria con el menú superior de categorías y eventos mostrados en tarjetas.

<img src="https://github.com/user-attachments/assets/0cd2339c-ea51-4099-bdf5-62be83d4d3ad" width="400"/>

### Selección de hijo
Desplegable para seleccionar un hijo/a y filtrar los eventos asociados.

<img src="https://github.com/user-attachments/assets/494f8e7f-f11d-49cb-92b4-2f7f61b38598" width="400"/>

### Tarjeta de evento
Cada tarjeta muestra la información del evento: nombre, hora y descripción del niño.

<img src="https://github.com/user-attachments/assets/d3b8f7eb-07d8-4b46-bfb5-5e95af84a716" width="400"/>

## Autor
Manuel José Liébana Vilches <br>
[LinkedIn](https://www.linkedin.com/in/manueljoseliebana/)
