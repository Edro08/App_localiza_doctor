import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Desh_Hab_Especialidad extends StatefulWidget {
  const Desh_Hab_Especialidad({super.key});

  @override
  State<Desh_Hab_Especialidad> createState() => _Desh_Hab_EspecialidadState();
}

class _Desh_Hab_EspecialidadState extends State<Desh_Hab_Especialidad> {
  bool activo = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Body(),
    );
  }

  Body (){
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarDeshabilitarEspecialidad(),
          line(),
          lblTrend(),
          switch_estado()
        ],
      ),
    );
  }

  Widget line() {
    return Container(
      height: 1,
      decoration: const BoxDecoration(color: Colors.grey),
    );
  }

  Widget switch_estado(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          activo ? "Registro Activo" : "Registro Inactivo", 
          style:  TextStyle(
            color: Colors.black,
            fontSize: 16
          ),
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

  Widget lblTrend(){
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Center(
            child: Text(
              "Estado",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.black
              ),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, 
          children: [
            Text(
              //widget.index==1? "Adicionar Especialidad" : widget.index ==2 ? "Actualizar Especialidad" : "",
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
                FeatherIcons.logOut,
                color: Colors.white,
              ),
            ),
          ]
        )
      ),
    );
  }
}