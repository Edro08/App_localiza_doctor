import 'package:app_localiza_doctor/pages/cliente/busqueda.dart';
import 'package:app_localiza_doctor/pages/cliente/home_user.dart';
import 'package:app_localiza_doctor/pages/login/login_user.dart';
import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";

class Contenedor extends StatefulWidget {
  const Contenedor({super.key});

  @override
  State<Contenedor> createState() => _ContenedorState();
}

class _ContenedorState extends State<Contenedor> {
  int menuactivo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: body(),
      bottomNavigationBar: footer(),
    );
  }

  Widget footer() {
    List items = [
      FeatherIcons.home,
      FeatherIcons.search,
      FeatherIcons.user,
    ];

    return Container(
      height: 60,
      decoration: const BoxDecoration(color: Color.fromARGB(0, 0, 0, 0)),
      child: Padding(
        padding: const EdgeInsets.only(left: 100, right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: List.generate(3, (index) {
            return IconButton(
                onPressed: () {
                  setState(() {
                    menuactivo = index;
                  });
                },
                icon: Icon(
                  items[index],
                  color: menuactivo == index ? Colors.amber : Colors.grey,
                ));
          }),
        ),
      ),
    );
  }

  Widget body() {
    return IndexedStack(index: menuactivo, children: const [
      Home(),
      Busqueda(),
      Login(),
    ]);
  }
}
