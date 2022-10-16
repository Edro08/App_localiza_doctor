import 'package:flutter/material.dart';

class ListadoEspecialidad extends StatefulWidget {
  const ListadoEspecialidad({super.key});

  @override
  State<ListadoEspecialidad> createState() => _ListadoEspecialidadState();
}

class _ListadoEspecialidadState extends State<ListadoEspecialidad> {
  List<String> listFiltro = <String>['One', 'Two', 'Three', 'Four'];
  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = listFiltro.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBarEspecialidad(),
      body: bodyEspecialidad(),
    );
  }

  appBarEspecialidad() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Lista de Especialidad",
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

  Widget bodyEspecialidad() {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            filtroText(),
            line(),
            filtro(),
            const SizedBox(
              height: 25,
            ),
            listadoText(),
            line(),
            const SizedBox(
              height: 10,
            ),
            listadoItems(),
          ],
        ),
      ),
    );
  }

  Widget filtroText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0, left: 12.0),
      child: Text(
        "Buscar por categorias",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
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

  Widget filtro() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 5.0),
            child: Container(
              width: 340,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: Colors.amber)),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                child: DropdownButton<String>(
                  value: dropdownValue,
                  elevation: 16,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                  icon: const Icon(
                    Icons.arrow_drop_down,
                  ),
                  dropdownColor: Colors.amber,
                  underline: Container(
                    height: 0,
                  ),
                  onChanged: (String? value) {
                    // This is called when the user selects an item.
                    setState(() {
                      dropdownValue = value!;
                    });
                  },
                  items:
                      listFiltro.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
          MaterialButton(
            minWidth: 30.0,
            height: 50.0,
            color: Colors.amber,
            onPressed: () {},
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget listadoText() {
    return const Padding(
      padding: EdgeInsets.only(bottom: 8.0, left: 12.0),
      child: Text(
        "Seleccionar Especialidad",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
      ),
    );
  }

  Widget listadoItems() {
    return const SingleChildScrollView();
  }
}
