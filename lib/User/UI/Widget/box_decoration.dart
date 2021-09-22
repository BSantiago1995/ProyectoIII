// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';

class Boxdecoration extends StatelessWidget {
  final Color colorBox;
  final double alto;
  final double ancho;
  final double borderciruclar;
  final String textnum;
  Boxdecoration(this.colorBox,this.alto,this.ancho,this.borderciruclar,this.textnum);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: alto,
      width: ancho,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderciruclar),
        border: Border.all(width: 0.5,color: Colors.black),
        color: colorBox,
      ),
      child:Text(textnum,textAlign: TextAlign.center,),
    );
  }
}
