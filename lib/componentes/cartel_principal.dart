import 'package:flutter/material.dart';

import 'nav_bar_superior.dart';

class CartelPrincipal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[  
        this.cabecera(),
        this.infoSerie(),
        this.acciones()
      ],
    ); 
  }

  Widget cabecera(){
    return Stack(
          children: <Widget>[
            Image.asset(
              'assets/imgs/fondo_carte.png',
              height: 350.0,
              fit: BoxFit.cover),
            Container(
              width: double.infinity,
              height: 350.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                  colors: <Color> [
                  Colors.black38,
                  Colors.black
                  ] 
                )
              ),    
            ),
            SafeArea(
              child: NavBarSuperior(),
            )
         ],
       );
  }

  Widget infoSerie(){

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 5.0,),
        Text(
          'Telenovela', 
          style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 5.0,),
        Text(
          'Suspenso', 
          style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 5.0,),
        Text(
          'Documental', 
          style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
        SizedBox(width: 6.0,),
        Icon(Icons.fiber_manual_record, color: Colors.white, size: 5.0,),
        Text(
          'Historia', 
          style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
      ],
    );
  }

  Widget acciones(){
    
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.check, color: Colors.white,),
              SizedBox(height: 3.0,),
              Text('Mi lista', style: TextStyle(color: Colors.white, fontSize: 10.0),)
            ],
          ),
          FlatButton.icon(
            onPressed: (){},
            color: Colors.white,
            icon: Icon(
              Icons.play_arrow,
              color: Colors.black,
            ),
            label: Text('Reproducir'),
          ),
          Column(
            children: <Widget>[
              Icon(Icons.info_outline, color: Colors.white,),
              SizedBox(height: 3.0,),
              Text('Información', style: TextStyle(color: Colors.white, fontSize: 10.0),)
            ],
          )
        ],),
    );

  }

}