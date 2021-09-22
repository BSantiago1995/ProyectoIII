import 'package:flutter/material.dart';
import 'package:flutter_application_snickers/User/UI/Widget/icon.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// ignore: must_be_immutable
class RatinBar extends StatelessWidget {
  final IconData iconos;
  double sizeicons = 0;
  final Color colorIcon;
  int itemRatin=0;
  RatinBar(this.iconos, this.sizeicons,this.colorIcon,this.itemRatin);
  @override
  Widget build(BuildContext context) {
    return RatingBar.builder(
      initialRating: 0,
      minRating: 1,
      unratedColor: Colors.white,
      itemSize: sizeicons,
      itemCount: itemRatin,
      itemBuilder: (context, _) {return IconButtton(iconos,colorIcon,sizeicons);},
      onRatingUpdate: (rating) {
        // ignore: avoid_print
        print(rating);
      },
    );
  }
}
