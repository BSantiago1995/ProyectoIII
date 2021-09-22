import 'package:flutter/material.dart';

class IconButtton extends StatelessWidget {
  final Color colores;
  final IconData iconos;
  final double tamanio;
  const IconButtton(this.iconos, this.colores,this.tamanio);
  @override
  Widget build(BuildContext context) {
    
    return Icon(
      
        iconos,
        color: colores,
        size: tamanio,
      );
    
  }
}
