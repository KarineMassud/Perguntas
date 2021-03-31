import 'package:flutter/material.dart';

main () =>runApp(new PerguntaApp());



class PerguntaApp extends StatelessWidget{

  var perguntaSelecionada = 0;

  void responder() {
     perguntaSelecionada++;
    print('Pergunta Respondida');
  }

  @override
  Widget build(BuildContext context){
    final perguntas =[
      'Qual sua cor favorita?',
      'Qual seu animal favorito',

    ];
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Text(perguntas[ perguntaSelecionada]),
            RaisedButton(
              child: Text('Resposta 1'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 2'),
              onPressed: responder,
            ),
            RaisedButton(
              child: Text('Resposta 3'),
              onPressed: responder,
            ),
            
          ],
        ),
      )
    );
  }



}
