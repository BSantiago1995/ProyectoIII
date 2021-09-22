import 'package:flutter/material.dart';


 
// ignore: must_be_immutable
class ButtonInk extends StatelessWidget {
   final String textc;
  double sizes=10;
  double topc=0.0;
  double ancho;
  double alto;
  final Color color1,color2;
  Widget routeLink;
  ButtonInk(  
    this.textc,
    this.sizes,
    this.topc,
    this.ancho,
    this.alto,
    this.color1,
    this.color2,
    this.routeLink
    );
  @override
  Widget build(BuildContext context) {
    
    return InkWell(
      
      onTap:() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => routeLink));
          },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [color1,color2],
           begin: const FractionalOffset(0.7, 0.3),
          end: const FractionalOffset(0.2, 0.6)
         
        ),
         borderRadius: BorderRadius.circular(25.0),
        ),

       margin: EdgeInsets.only(top: topc),
        constraints:  BoxConstraints.expand(height: alto , width: ancho),
        child: Center(
          child: Text(textc,
              style: TextStyle(fontSize: sizes, color: Colors.black)),
        ),
      ),
    );
  }
}