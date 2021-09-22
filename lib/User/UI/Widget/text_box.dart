import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Textbox extends StatelessWidget{
  String textoI;
  double sizeLetter=0;
  final Color colores;
  Textbox(this.textoI,this.sizeLetter,this.colores);
 @override
  Widget build(BuildContext context) {
  return Text(
    textoI,
  textAlign:TextAlign.left,
  style: TextStyle(
     fontSize: sizeLetter,
  color: colores,
    ),
  );
  
  }

}