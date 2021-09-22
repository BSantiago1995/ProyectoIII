import 'package:flutter/material.dart';


class ButtonAutenticar extends StatefulWidget {
 
  final String textc;
  double sizes=10;
  double topc=0.0;
   final VoidCallback onPressed;

  ButtonAutenticar(
    //Key key,
    this.textc,
    this.sizes,
    this.topc,
     this.onPressed
    );
    
  @override
   State<StatefulWidget> createState() {
     
      return _ButtonAutenticar();
    }
}
class _ButtonAutenticar extends State<ButtonAutenticar>{
   @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onPressed,
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
          colors: [Colors.red.shade100,Colors.redAccent],
           begin: const FractionalOffset(1.0, 0.1),
          end: const FractionalOffset(1.0, 0.6)
         
        ),
         borderRadius: BorderRadius.circular(25.0),
        ),

       margin: EdgeInsets.only(top: widget.topc),
        constraints: const BoxConstraints.expand(height: 35.0, width: 250.0),
        child: Center(
          child: Text(widget.textc,
              style: TextStyle(fontSize: widget.sizes, color: Colors.white)),
        ),
      ),
    );
}
}