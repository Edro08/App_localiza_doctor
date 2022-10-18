import 'package:flutter/material.dart';

class ListadoLocal extends StatefulWidget {
  const ListadoLocal({super.key});

  @override
  State<ListadoLocal> createState() => _ListadoLocalState();
}

class _ListadoLocalState extends State<ListadoLocal> {
  List<String> listFiltro = <String>['One', 'Two', 'Three', 'Four'];
  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = listFiltro.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
