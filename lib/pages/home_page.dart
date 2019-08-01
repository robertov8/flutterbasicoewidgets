import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _img(),
          _button()
        ],
      ),
    );
  }

  _button() {
    return RaisedButton(
      color: Colors.blue,
      onPressed: () => _onClickOk(),
      child: Text(
        'Ok',
        style: TextStyle(color: Colors.white, fontSize: 30),
      ),
    );
  }

  void _onClickOk() {
    print('Clicou no botão');
  }

  _img() {
    return Image.asset(
      'assets/images/dog1.png',
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      'Hello Word',
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.wavy,
      ),
    );
  }
}
