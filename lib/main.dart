import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var tarea = { "nombre": "Hola soy una tarea", "done": true};

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Welcome to Flutter'),
        ),
        body: Center(
          child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Row(
                children: [
                  if(tarea['done'])
                    Icon(Icons.done)
                  else
                    Icon(Icons.clear)
                  ,
                  Text(tarea['nombre'])
                ]
            )
          )
        ),
      ),
    );
   }
  }