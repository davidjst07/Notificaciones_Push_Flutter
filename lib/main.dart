import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/firebase_api.dart';
import 'package:flutter_application_1/routes/router.dart';


void main()  async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseApi().initNotifications();
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      // Rutas de la aplicacion
      onGenerateRoute: AppRouter.generateRoute,
      // Establecer la ruta inicial
      initialRoute: '/',
    );
  }
}






class PaginaPrincipal extends StatelessWidget {
  const PaginaPrincipal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // Alineacion de los elementos
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Usamos Navigator para ir a la ruta /about
                Navigator.pushNamed(
                  context, 
                  '/about',
                );
              },
              child: const Text('Ir a la pagina de about'),
            ),
            // Contact
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context, '/contact');
              },
              child: const Text('Ir a la pagina de contacto'),

            )
          ],
        ),
      ),
    );
  }
}












