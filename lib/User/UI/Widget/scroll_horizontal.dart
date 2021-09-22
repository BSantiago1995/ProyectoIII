// ignore_for_file: override_on_non_overriding_member

import 'package:flutter/material.dart';



class ScrollHorizantal extends StatelessWidget {
  @override
  StatelessWidget c1,c2,c3,c4,c5,c6,c7,c8,c9;
  ScrollHorizantal(this.c1,this.c2,this.c3,this.c4,this.c5,this.c6,this.c7,this.c8,this.c9);
  Widget build(BuildContext context) {
    return Container(

          margin: const EdgeInsets.symmetric(vertical: 20.0),
          height: 20,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
                c1,
                c2,
                c3,
                c4,
                c5,
                c6, 
                c7,
                c8,
                c9                     
            ],
          ),
        );
    
  }
}