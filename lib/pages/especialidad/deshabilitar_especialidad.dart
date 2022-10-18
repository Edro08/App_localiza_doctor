import 'package:flutter/material.dart';

class DeshabilitaEspecialidad extends StatefulWidget {
  const DeshabilitaEspecialidad({super.key});

  @override
  State<DeshabilitaEspecialidad> createState() =>
      _DeshabilitaEspecialidadState();
}

class _DeshabilitaEspecialidadState extends State<DeshabilitaEspecialidad> {
  bool activo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarDeshabilitarEspecialidad(),
      body: bodyDeshabilitarEspecialidad(),
    );
  }

  bodyDeshabilitarEspecialidad() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 30.0, right: 30.0, top: 20.0, bottom: 10.0),
        child: Column(
          children: [line(), lblTrend(), switchestado()],
        ),
      ),
    );
  }

  Widget line() {
    return Container(
      height: 1,
      decoration: const BoxDecoration(color: Colors.grey),
    );
  }

  Widget switchestado() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          activo ? "Activo" : "Inactivo",
          style: const TextStyle(color: Colors.black, fontSize: 16),
        ),
        Switch(
          value: activo,
          activeColor: Colors.blueAccent,
          onChanged: (value) {
            setState(() {
              activo = value;
            });
          },
        ),
      ],
    );
  }

  Widget lblTrend() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Center(
            child: Text(
              "Estado",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                  color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  appBarDeshabilitarEspecialidad() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Deshabilitar Especialidad",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            MaterialButton(
              minWidth: 30.0,
              height: 40.0,
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.amber,
              child: const Icon(
                Icons.arrow_back_outlined,
                color: Colors.white,
              ),
            ),
          ])),
    );
  }
}
