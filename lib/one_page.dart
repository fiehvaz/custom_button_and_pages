import 'package:flutter/material.dart';

import 'widgets/custom_button.dart';

class OnePage extends StatelessWidget {
  const OnePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamed('/twoPage', arguments: 'teste')
                    .then((value) => print(value));
              },
              child: Text("Ir para a pagina 2"),
            ),
          ),
          CustomButton(
            disable: false,
            onPressed: () {},
            title: "Custom BTN Test",
            titleSize: 8,
          ),
        ],
      ),
    );
  }
}
