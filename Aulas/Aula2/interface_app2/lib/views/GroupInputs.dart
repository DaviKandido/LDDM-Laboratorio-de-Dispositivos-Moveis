import 'package:flutter/material.dart';
import 'components/CampoTexto.dart';
import 'components/EntradaCheckBox.dart';
import 'components/EntradaRadioButton .dart';
import 'components/EntradaSlider.dart';

class GroupInputs extends StatefulWidget {
  @override
  State<GroupInputs> createState() => _GroupInputsState();
}

class _GroupInputsState extends State<GroupInputs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Group Inputs"),
      ),
      body: Column(
        children: [
          CampoTexto(),
          EntradaCheckBox(),
          EntradaRadioButton(),
          EntradaSlider(),
          EntradaSlider(),
        ],
      ),
    );
  }
}
