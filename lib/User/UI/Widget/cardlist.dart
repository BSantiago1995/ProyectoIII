import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Widget/cardprincipal.dart';

class Cardlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 450,
          alignment: Alignment.center,
          child: ListView(
            
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              CardPrincipal("React Miller", 'Deportive snickers', '130\$',
                  'assets/img/nike.png'),
              CardPrincipal("React Jordan", 'Deportive shoes', '175\$',
                  'assets/img/Nike2.jpg'),
              CardPrincipal("Air Force One", 'The first basketball shoes', '185\$',
                  'assets/img/nike3.webp'),
              CardPrincipal("React Miller", 'Deportive snickers', '95\$',
                  'assets/img/nike4.webp'),
            ],
          ),
        ),
      ],
    );
  }
}
