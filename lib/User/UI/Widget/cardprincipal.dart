import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Screem/profile.dart';
import 'package:flutter_application_snickers/User/UI/Widget/button_ink.dart';
import 'package:flutter_application_snickers/User/UI/Widget/rating_bar.dart';
import 'package:flutter_application_snickers/User/UI/Widget/text_box.dart';

// ignore: must_be_immutable
class CardPrincipal extends StatelessWidget {
  String pathImg ;
    String textotitle = "";
  String textdescrip = "";
  String cost = "";
  CardPrincipal(this.textotitle, this.textdescrip, this.cost, this.pathImg);
  @override
  Widget build(BuildContext context) {
    final card = Stack(children: [
      Container(
        height: 640,
        width: 200,
        margin: const EdgeInsets.only(top: 35.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Column(children: <Widget>[
            Container(
              height: 300,
              width: 185,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(pathImg)),
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  shape: BoxShape.rectangle,
                  boxShadow: const <BoxShadow>[
                    BoxShadow(
                        blurRadius: 10.0,
                        color: Colors.grey,
                        offset: Offset(0.0, 7.0))
                  ]),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Textbox(textotitle, 20, Colors.white),
                ),
                Expanded(
                  child: Textbox(cost, 15, Colors.white),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Textbox(textdescrip, 10, Colors.white),
                ),
                Expanded(
                  child: RatinBar(Icons.favorite_sharp, 25, Colors.red,1),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Expanded(flex: 1,child: Text("") ,),
                Expanded(flex: 2, child: ButtonInk("View",10,10,5,20,Colors.amber,Colors.lime,Profile(textotitle,cost, pathImg,textdescrip),)),
                const Expanded(flex: 1,child: Text("") ,),
                ],
            )
          ]),
        ),
      ),
    ]);

    return card;
  }
}
