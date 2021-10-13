import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.red.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop("retorno");
            // se .push inves de .pop aqui ta em pilha então pop rola
            //MaterialPageRoute(builder: (context) => const OnePage()),
          },
          child: Text('Voltar para a pagina anteorior $args'),
        ),
      ),
    );
  }
}
