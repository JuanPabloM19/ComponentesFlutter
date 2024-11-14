import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class Practica2Page extends StatelessWidget {
  const Practica2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Practica de Componentes'),
        ),
        body: Stack(
          children: [
            Positioned(
              left: size.width * 0.1,
              top: size.height * 0.05,
              child: Container(
                width: size.width * 0.5,
                height: size.width * 0.5,
                constraints: const BoxConstraints(
                  maxWidth: 250,
                  
                  maxHeight: 250,
                ),
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            Positioned(
              right: size.width * 0.1,
              top: size.height * 0.05,
              child: Container(
                width: size.width * 0.5,
                height: size.width * 0.5,
                constraints: const BoxConstraints(
                  maxWidth: 250,
                  maxHeight: 250,
                ),
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.all(16.0),
              children: [
                SizedBox(height: size.height * 0.1),
                const Center(
                  child: Text(
                    'Bienvenidos',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.2),
                Center(
                  child: SizedBox(
                    width: size.width * 0.4,
                    height: size.height * 0.08,
                    child: FloatingActionButton(
                      backgroundColor: Colors.blue,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyApp(),
                          ),
                        );
                      },
                      child: const Text(
                        'Nueva Pagina',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.1),
                const Center(
                  child: Text(
                    'Practica Componentes',
                    style: TextStyle(
                        color: Color.fromARGB(255, 5, 125, 67), fontSize: 30.0),
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.arrow_circle_left_outlined),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
