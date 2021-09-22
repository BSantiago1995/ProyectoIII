import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Screem/home.dart';


class Inicio extends StatefulWidget{
  @override
  _Inicio createState()=> _Inicio();

}
class _Inicio extends State<Inicio>{
   @override
    void initState(){
      Future.delayed(const Duration(
      seconds: 3),
      ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>Home())),
      
      );
      super.initState();
    }
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          Spacer(),
          Center(
            child:FractionallySizedBox(
            widthFactor: .6,
            child: FlutterLogo(size:250), 
          ),
          ),
          Spacer(),
          CircularProgressIndicator(),
          Spacer(),
          Text("Bienvenidos"),
          Spacer(),
        ],
      ),
      ),
    );
  }
}
  /// This is the stateful widget that the main application instantiates.
  
