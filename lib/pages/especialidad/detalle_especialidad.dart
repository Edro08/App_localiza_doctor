import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class DetalleEspecialidad extends StatefulWidget {
  const DetalleEspecialidad({super.key});

  @override
  State<DetalleEspecialidad> createState() => _DetalleEspecialidadState();
}

class _DetalleEspecialidadState extends State<DetalleEspecialidad> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  body(){
    return SingleChildScrollView(
      child: Column(
        children: [
          appBarDetalleEspecialidad(),
          lblNombre(),
          lblCategoria(),
          lblEstado()
        ],
      ),
    );
  }

  Widget lblNombre(){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Nombre: nombre de la espacialiadd ",
            style:  TextStyle(
              color: Colors.black,
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }

  Widget lblCategoria(){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categoria: categoria de la espacialiadd ",
            style:  TextStyle(
              color: Colors.black,
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }

  Widget lblEstado(){
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Estado: activa",
            style:  TextStyle(
              color: Colors.black,
              fontSize: 16
            ),
          ),
        ],
      ),
    );
  }

  appBarDetalleEspecialidad() {
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
              "Detalles Especialidad",
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