import 'package:flutter/material.dart';

class Busqueda extends StatefulWidget {
  const Busqueda({super.key});

  @override
  State<Busqueda> createState() => _BusquedaState();
}

class _BusquedaState extends State<Busqueda> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration:
            const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0)),
        child: const Text(
          "Busqueda",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
    );
  }
}
