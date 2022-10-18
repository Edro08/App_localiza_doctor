import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class ActualizarHospital extends StatefulWidget {
  const ActualizarHospital({Key? key, this.index}) : super(key: key);
  final dynamic index;

  @override
  State<ActualizarHospital> createState() => _ActualizarHospitalState();
}

class _ActualizarHospitalState extends State<ActualizarHospital> {
  List<String> listFiltro = <String>[
    'Onedhddgdgdgdgdgd',
    'Two',
    'Three',
    'Four'
  ];
  late String dropdownValue;

  @override
  void initState() {
    dropdownValue = listFiltro.first;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
    );
  }
}
