import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/screens/screen_about.dart';
import 'package:flutter_application_1/screens/screen_contacto.dart';

class AppRouter {

  // Metodo para obtener las rutas
  static Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(
          builder: (_) => const PaginaPrincipal());
      case '/about':
        return MaterialPageRoute(
          builder:(_) => const ScreenAbout());
      case '/contact':
        return MaterialPageRoute(
          builder: (_) => const ScreenContacto());


      
    }
  }
}