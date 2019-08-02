import 'package:aula01/pages/hello_page1.dart';
import 'package:aula01/pages/hello_page2.dart';
import 'package:aula01/pages/hello_page3.dart';
import 'package:aula01/widgets/blue_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Flutter'),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      margin: EdgeInsets.all(20),
      height: 300,
      child: PageView(
        children: <Widget>[
          _img('assets/images/dog1.png'),
          _img('assets/images/dog2.png'),
          _img('assets/images/dog3.png'),
          _img('assets/images/dog4.png'),
          _img('assets/images/dog5.png'),
        ],
      ),
    );
  }

  Column _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton('ListView', onPressed: () => _onClickNavigator(context, HelloPage1(),)),
            BlueButton('Page 2', onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton('Page 3', onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton('Snack', onPressed: _onClickSnack()),
            BlueButton('Dialog', onPressed: _onClickDialog()),
            BlueButton('Toast', onPressed: _onClickToast()),
          ],
        )
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }));

    print(s);
  }

  Function _onClickSnack() {}

  Function _onClickDialog() {}

  Function _onClickToast() {}

  _img(String img) {
    return Image.asset(
      img,
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
