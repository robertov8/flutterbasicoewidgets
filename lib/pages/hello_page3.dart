import 'package:aula01/widgets/blue_button.dart';
import 'package:flutter/material.dart';

class HelloPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page 3'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Center(
        child: BlueButton(
      'Voltar',
      onPressed: () => _onClickBack(context),
    ));
  }

  _onClickBack(BuildContext context) {
    Navigator.pop(context, "Tela 3");
  }
}
