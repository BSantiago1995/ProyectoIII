import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Screem/home.dart';
import 'package:flutter_application_snickers/User/UI/Widget/box_decoration.dart';
import 'package:flutter_application_snickers/User/UI/Widget/button_ink.dart';
import 'package:flutter_application_snickers/User/UI/Widget/icon_buton.dart';
import 'package:flutter_application_snickers/User/UI/Widget/rating_bar.dart';
import 'package:flutter_application_snickers/User/UI/Widget/scroll_horizontal.dart';
import 'package:flutter_application_snickers/User/UI/Widget/text_box.dart';


class Profile extends StatelessWidget {
  @override
  // ignore: override_on_non_overriding_member
  final String title,cost,assetName,textdes;
  Profile(this.title,this.cost,this.assetName,this.textdes);
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Row(
              children: [
                Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child:
                      IconButon(Icons.arrow_back_outlined,Colors.grey.shade900, Colors.white, 25, Home()),
                      )
                ),
                Expanded(
                    flex: 3,
                    child: IconButon(Icons.share,Colors.grey.shade900, Colors.white, 25, Home())
                ),
                Expanded(
                    flex:1,
                    child: RatinBar(Icons.favorite_sharp, 25, Colors.red,1)
                )
                
              ],
            ),
            Row(children: [
              Expanded(flex:5,child: Textbox(title, 30, Colors.white),),
              Expanded(flex:2,child: Padding(padding: const EdgeInsets.only(top:20.0),child: Textbox(cost, 25, Colors.white),)
              ,),
              
              ],
              ),
              RatinBar(Icons.star, 25, Colors.amber,5),
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  const Expanded(flex: 1,child:Text("")),
                  Expanded(
                flex: 5,
                child: Container(
                height: 300,
                width: 100,
                padding: const EdgeInsets.all(16),
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(assetName),
                    fit: BoxFit.cover,
                    alignment: Alignment.center
                    ),
                    borderRadius: BorderRadius.circular(10),
                ),
              ),
              ),
              const Expanded(flex: 1,child:Text("")),
                ],
              ),
                            Row(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  const Expanded(flex: 1,child:Text("")),
                Expanded(flex:5,child: Padding(padding:const EdgeInsets.all(15) ,
                child: Textbox(textdes, 15, Colors.white),
                ),
                ),
              const Expanded(flex: 1,child:Text("")),
                ],
              ),
              Row(children: [
                const Expanded(flex: 5,child:Text("")),
                Expanded(flex:3,
                child: ScrollHorizantal
                (Boxdecoration(Colors.teal, 20, 20, 10,""),
                Boxdecoration(Colors.red, 20, 20, 10,""),
                Boxdecoration(Colors.blue, 20, 20, 10,""),
                Boxdecoration(Colors.orange, 20, 20, 10,""),
                Boxdecoration(Colors.cyan, 20, 20, 10,""),
                Boxdecoration(Colors.white, 20, 20, 10,""),
                Boxdecoration(Colors.lime, 20, 20, 10,""),
                Boxdecoration(Colors.green, 20, 20, 10,""),
                Boxdecoration(Colors.deepPurple, 20, 20, 10,"")
                ) ),
                const Expanded(flex: 5,child:Text("")),
              ],
              ),
               Row(children: [
                const Expanded(flex: 2,child:Text("")),
                Expanded(flex:6,
                child: ScrollHorizantal
                (
                Boxdecoration(Colors.white, 20, 50, 5,"7"),
                Boxdecoration(Colors.white, 20, 50, 5,"7.5"),
                Boxdecoration(Colors.white, 20, 50, 5,"8"),
                Boxdecoration(Colors.white, 20, 50, 5,"8.5"),
                Boxdecoration(Colors.white, 20, 50, 5,"9"),
                Boxdecoration(Colors.white, 20, 50, 5,"9.5"),
                Boxdecoration(Colors.white, 20, 50, 5,"10"),
                Boxdecoration(Colors.white, 20, 50, 5,"10.5"),
                Boxdecoration(Colors.white, 20, 50, 5,"11")
                ) ),
                const Expanded(flex: 2,child:Text("")),
              ],
              ),
              Row(
              children: [
                const Expanded(flex:1,child: Text(""),),
                Expanded(flex:2,child: ButtonInk('Add to car',20,0,45,30,Colors.redAccent,Colors.pinkAccent,Home())),
                const Expanded(flex:1,child: Text(""),),
              ],
            )
              
            
            
          ],
        ),
      ),
    );
  }
}
