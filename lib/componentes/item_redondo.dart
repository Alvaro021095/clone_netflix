import 'package:flutter/material.dart';

class ItemRedondo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(width: 10.0,),
        Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: <Widget>[
            Container(
              height: 110.0,
              width: 110.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(110.0),
                border: Border.all(
                  color: Colors.yellow,
                  width: 2.0
                )
              ),
              child: ClipOval(
                child: Image.asset('assets/imgs/samuraix.png', fit: BoxFit.cover,) 
              )
            ),
            Image.asset('assets/imgs/logo_dark.png',
            width: 100.0,
            color: Colors.white,)
          ],
        ),
      SizedBox(width: 10.0,)  
      ],
    );
  }
}