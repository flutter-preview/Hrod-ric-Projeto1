import 'package:flutter/material.dart';

class Pagina2 extends StatefulWidget {
  const Pagina2({super.key, required String title}): _title = title;

  final String _title;
  get name => _title;

  @override
  State<Pagina2> createState() => _Pagina2State();
}

class _Pagina2State extends State<Pagina2> {
  int _imagem = 1;
  void _trocarImagem(){
    setState(() {
      _imagem+=1;
      if(_imagem>4)_imagem=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('images/$_imagem.gif'),
            ],
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: _trocarImagem,
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(const Size(100, 50)), // Define o tamanho fixo do botão
            //minimumSize: MaterialStateProperty.all(Size(200, 50)), // Define o tamanho mínimo do botão
          ),
          child: const Text('Mudar ')
        )
    );
  }
}