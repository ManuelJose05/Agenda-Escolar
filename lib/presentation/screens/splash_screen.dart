import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:prueba_tecnica_agenda/data/children.dart';
import 'package:prueba_tecnica_agenda/provider/children_provider.dart';

// Pantalla de carga que se muestra al iniciar la app
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller; // Controlador de la animación del texto
  late Animation<double> _scaleAnimation; // Animación de escala del texto
  late Animation<double> _opacityAnimation; // Animación de opacidad del texto

  @override
  void initState() {
    super.initState();

    // Obtenemos el provider de los hijos (ChildrenProvider)
    final provider = Provider.of<ChildrenProvider>(context, listen: false);
    // Cargamos el listado de hijos (children) en el provider con datos de prueba
    provider.setChildren(children);

    // Iniciamos el controlador de animación del texto
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 4),
    )..forward();

    // Animación para escalar el texto
    _scaleAnimation = Tween<double>(begin: 0.6, end: 1.2).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.6, curve: Curves.bounceIn),
      ),
    );

    // Animación para mostrar el texto con una transición de opacidad
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.2, 0.8, curve: Curves.decelerate),
      ),
    );

    // Pasados 5 segundos, redirige a la pantalla de inicio (home)
    Future.delayed(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, 'home');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isWide = size.width > 600;

    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            tileMode: TileMode.clamp,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFF6B6B), Color(0xFFFFD93D)],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeTransition(
                opacity: _opacityAnimation,
                child: ScaleTransition(
                  scale: _scaleAnimation,
                  child: Text(
                    'Kids & Clouds',
                    style: TextStyle(
                      fontSize: isWide ? 48 : 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: 1.5,
                      shadows: const [
                        Shadow(
                          blurRadius: 6,
                          color: Colors.black26,
                          offset: Offset(2, 2),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: size.height * 0.5,
                  maxWidth: size.width * 0.7,
                ),
                child: Lottie.asset(
                  'assets/animations/splash_animation.json',
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
