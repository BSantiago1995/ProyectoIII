import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/Bloc/bloc_user.dart';
import 'package:flutter_application_snickers/User/UI/Screem/home.dart';
import 'package:flutter_application_snickers/User/UI/Widget/button_autenticar.dart';
import 'package:flutter_application_snickers/User/UI/Widget/text_box.dart';
import 'package:generic_bloc_provider/generic_bloc_provider.dart';

class Login extends StatelessWidget{
  late BlocUSer blocUser;
  @override
  Widget build(BuildContext context){
    blocUser = BlocProvider.of(context);
    return _controlSession();
  }
  Widget _controlSession(){
    return StreamBuilder(
      stream: blocUser.authStatus,
      builder: (
        BuildContext context,
        AsyncSnapshot snapshot
      ){
        if(!snapshot.hasData || snapshot.hasError){
            return loginApp();
        }else{
          return Home();
        }
      }
      );
  }
  Widget loginApp() {
    return Scaffold(
      body:ListView(
        children:<Widget>[
        SizedBox(
          width:500,
          height: 790,
          child: Card(
            color: const Color.fromRGBO(150, 196, 232, 1.0),
            shadowColor: Colors.teal.shade100,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(45)),
            margin: const EdgeInsets.all(20),
            elevation: 10,
            child:ClipRRect(
              borderRadius: BorderRadius.circular(30),
            child: Column(
              children: [
                ListTile(
                  contentPadding:const EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Textbox('Welcome to,',25,Colors.white),
                  subtitle: Textbox('Snickers App',15,Colors.white),
                  
                ),
                const Image(image:AssetImage("assets/img/login.jpg"),height: 350,fit: BoxFit.fitHeight,),
                ListTile(
                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 25, 0),
                  title: Textbox('Sing in',25,Colors.white),
                ),
                Column(
                  children: [
                    
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonAutenticar(
                        'Login whit google', 
                        15, 
                        65, 
                        // ignore: avoid_print
                        () {blocUser.singIn().then((UserCredential user)=> print("Usted se ha autenticado como ${user.user}")); }
                        ),
                        
                      ],
                    )
                  ],
                )
              ],
            ),
            ),

          ),
        )
        ]
      )
    );
  }
}