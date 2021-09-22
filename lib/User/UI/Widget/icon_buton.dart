import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Widget/icon.dart';

// ignore: must_be_immutable
class IconButon extends StatelessWidget {
  final Color colorIcon;
  final Color colorShape;
  final IconData iconos;
  final double tamanio;
  Widget routeLink;
  IconButon(this.iconos, this.colorShape,this.colorIcon, this.tamanio, this.routeLink);
  @override
  Widget build(BuildContext context) {
        return Container(
      decoration:
          ShapeDecoration(shape: const CircleBorder(), color:colorShape),
      child: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => routeLink));
          },
          icon:IconButtton(iconos, colorIcon, tamanio)),
    );
  }
}
