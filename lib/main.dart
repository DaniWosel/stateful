import 'package:flutter/material.dart';

void main() => runApp(MyApp());

//-----------------------------------------
class Tarea extends StatefulWidget {
  var laTarea;
  Tarea(t){
    print("constructor de la tarea"+t['nombre']);
    this.laTarea=t;
  }
  @override
  State<Tarea> createState() {
    print("Create state");
    return new TareaState(laTarea);
  }
}

class TareaState extends State<Tarea>{
  var tst;
  TareaState(ts){
    this.tst=ts;
  }
  click(){
    print("click");
    setState(
        (){
          tst['done'] = !tst['done'];
        }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(left:0),
        child:  Row(
          children: [
            if(tst['done'])
          FlatButton(
           onPressed: click,
           child:Icon(Icons.done))
            else
          FlatButton(
           onPressed: click,
           child:Icon(Icons.clear))
            ,
            if(tst['done'])
                 Text("  "+tst['nombre'].toUpperCase())
            else
                 Text("  "+tst['nombre'])

          ]
        )
        //Text(tst["nombre"].toString())
    );
  }
}

//-----------------------------------------

class MyApp extends StatelessWidget {
  var tar;

  var tareaejemplo = [ {"nombre": "Hola soy una tarea", "done": true},
    {"nombre": "Hola soy una tarea 2", "done": true},
    {"nombre": "Hola soy una tarea 3", "done": true},
    {"nombre": "Hola soy una tarea 4", "done": true},
    {"nombre": "Hola soy una tarea 5", "done": true},
    {"nombre": "Hola soy una tarea 6", "done": true},
    {"nombre": "Hola soy una tarea 7", "done": true},
    {"nombre": "Hola soy una tarea 8", "done": true},
    {"nombre": "Hola soy una tarea 9", "done": true},
    {"nombre": "Hola soy una tarea 10", "done": true}
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: ListView(
          children: [for(tar in tareaejemplo) Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  Tarea(tar), //!!!---------
                ]
            )
          )
        ]
        ),
      ),
    );
   }
  }