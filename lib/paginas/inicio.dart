import 'package:clone_netflix/componentes/cartel_principal.dart';
import 'package:clone_netflix/componentes/item_cuadrado.dart';
import 'package:clone_netflix/componentes/item_redondo.dart';
import 'package:flutter/material.dart';

class InicioPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView( 
        children: <Widget>[
          CartelPrincipal(),
          this.listaGorizontal('Avances', ItemRedondo(), 5),
          SizedBox(height: 10.0,),
          this.listaGorizontal('Tendencias', ItemCuadraro(), 5),
          SizedBox(height: 10.0,),
          this.listaGorizontal('Programas', ItemCuadraro(), 5),
          SizedBox(height: 20.0,)
        ],
      ),
      bottomNavigationBar: this.navInferior()
    );
  }

  BottomNavigationBar navInferior(){
    return BottomNavigationBar(
      backgroundColor: Colors.black,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white54,
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Inicio')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Buscar')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.queue_play_next),
          title: Text('Proximo')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.file_download),
          title: Text('Descargas')
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.more_vert),
          title: Text('Mas')
        ),
      ],
    );
  }


  Widget listaGorizontal(String titulo, Widget item, int cantidad){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 10.0),
          child: Text(
            titulo, 
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 20.0))
        ),
        Container(
          height: 110.0,
          child:  ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: cantidad,
            itemBuilder: (context, index){
              return item;
            },
          ),
        )
      ],
    );
  }

}