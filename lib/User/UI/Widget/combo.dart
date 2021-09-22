import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Combo extends StatefulWidget {
  const Combo({Key? key}) : super(key: key);

  @override
  State<Combo> createState() => _ComboBox();
}

class _ComboBox extends State<Combo> {
  String initial='Select item';
  @override
  Widget build(BuildContext context) {
       return Center(
         child: Container(
           width: 300,
           margin: const EdgeInsets.only(top: 15),
           decoration: BoxDecoration(
             border: Border.all(color: Colors.red,width: 2),
             borderRadius: BorderRadius.circular(25)
           ),
           child: DropdownButton<String>(
            dropdownColor: Colors.white,
            value: initial,
            icon: const Icon(Icons.arrow_drop_down,color: Colors.white,),
            iconSize: 30,
            isExpanded:true,
            style: const TextStyle(color: Colors.grey),alignment: Alignment.topRight,
            underline: const SizedBox(),
            onChanged: (String? newValue) {
              setState(() {
                initial = newValue!;
              });
            },
            items: <String>['Select item', 'Nike', 'Adidas', 'Reebook']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),alignment: Alignment.center,
              );
            }).toList(),
    ),
         ),
       );
  }
}