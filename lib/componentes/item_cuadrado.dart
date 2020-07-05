import 'package:flutter/material.dart';

class ItemCuadraro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Image.asset('assets/imgs/programa1.png', width: 100.0, height: 100.0,)
      ],
    );
  }
}