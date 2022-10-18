import 'package:flutter/material.dart';

class ListadoDoctor extends StatefulWidget {
  const ListadoDoctor({super.key});

  @override
  State<ListadoDoctor> createState() => _ListadoDoctorState();
}

class _ListadoDoctorState extends State<ListadoDoctor> {
  final items = [
    'Alfredo Rivera',
    'Juan Ramirez',
    'Juana Ayala',
    'Jesús Rivera',
    'Ana Cerén',
    'Alfredo Rivera',
    'Juan Ramirez',
    'Juana Ayala',
    'Jesús Rivera',
    'Ana Cerén',
    'Oscar Rivas',
    'Sandra Oporto',
    'Josefina Díaz',
    'María Campos',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarListarDoctor(),
      body: Column(
        children: [Expanded(child: listadoDoctor())],
      ),
    );
  }

  appBarListarDoctor() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      title: Padding(
          padding: const EdgeInsets.only(left: 0, right: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            const Text(
              "Listado de Doctores",
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

/*
  bodyListDoctor() {
    return SingleChildScrollView(
      child: Column(
        children: [
          listadoDoctor(),
        ],
      ),
    );
  }
*/
  Widget listadoDoctor() {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 15, top: 20),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Container(
            // padding: EdgeInsets.only(top: 5),
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(
                  bottom: BorderSide(
                    color: Colors.amber,
                  ),
                )),
            child: ListTile(
              /*
                shape: RoundedRectangleBorder( //<-- SEE HERE
              side: BorderSide(width: 2),
              borderRadius: BorderRadius.circular(20),
             ),*/
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: Text(
                  items[index],
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
              ),
              title: Text(
                style: TextStyle(color: Colors.black, fontSize: 17),
                'Nombre: ${items[index]}',
              ),
              subtitle: Text(
                  style: TextStyle(color: Colors.grey, fontSize: 13),
                  'Information: información doctor'),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
