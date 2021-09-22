// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Widget/button_ink.dart';
import 'package:flutter_application_snickers/User/UI/Widget/icon.dart';
import 'package:flutter_application_snickers/User/UI/Widget/text_box.dart';
import 'package:flutter_application_snickers/User/UI/Widget/cardlist.dart';

import 'package:flutter_application_snickers/User/UI/Widget/combo.dart';


// ignore: must_be_immutable
class Home extends StatelessWidget {
  String valueChoose = "";
  List listaItem = ['New Realeses', 'Nike Snikers', 'Adidas T-Shirt'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top:25),
              child: const Combo(),
            ),
            Container(
              margin: const EdgeInsets.only(top:25),
              child: Cardlist(),
            ),
            
            Container(
              
              margin: const EdgeInsets.only(top:60),
              child: Row(
              children: [
                Expanded(flex:2,child: Textbox("You migth alse like", 20, Colors.white),),
                Expanded(flex:1,child: ButtonInk('View All',20,0,45,30,Colors.green.shade100,Colors.teal.shade100,Home()))
              ],
            ),
            ),
            
         ],
        ),
      ),
      
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(icon: IconButtton(Icons.home,Colors.white, 35),title: Text(''),backgroundColor: Colors.blueGrey,),
        BottomNavigationBarItem(icon: IconButtton(Icons.favorite_sharp,Colors.white, 35),title: Text(''),backgroundColor: Colors.blueGrey,),
        BottomNavigationBarItem(icon: IconButtton(Icons.shopping_cart,Colors.white, 35),title: Text(''),backgroundColor: Colors.blueGrey,),
        BottomNavigationBarItem(icon: IconButtton(Icons.build_rounded,Colors.white, 35),title: Text(''),backgroundColor: Colors.blueGrey,),
        BottomNavigationBarItem(icon: IconButtton(Icons.contact_mail,Colors.white, 35),title: Text(''),backgroundColor: Colors.blueGrey,),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.amber,
        ),
    );
  }
}
