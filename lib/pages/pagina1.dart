import 'package:flutter/material.dart';
import 'package:projeto1/routes/routes_generator.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key, required String title}): _title = title;

  final String _title;
  get name => _title;

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Align(
        alignment: Alignment.topLeft,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child:ListView(
            children:[
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('images/1.gif', width: 320,),
                  Image.asset('images/4.gif', width: 320,),
                  Image.asset('images/3.gif', width: 320,),
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('images/3.gif', width: 320,),
                  Image.asset('images/1.gif', width: 320,),
                  Image.asset('images/4.gif', width: 320,),
                  ],
                ),
                Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Image.asset('images/4.gif', width: 320,),
                  Image.asset('images/3.gif', width: 320,),
                  Image.asset('images/1.gif', width: 320,),
                  ],
                )
              ],
            ),
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: (){
              Navigator.of(context).pushNamed(RoutesGenerator.pagina2);
            },
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(200, 50)), // Define o tamanho fixo do botão
            //minimumSize: MaterialStateProperty.all(Size(200, 50)), // Define o tamanho mínimo do botão
          ),
          child: const Text('Ir para Página 2')
        )
    );
  }
}