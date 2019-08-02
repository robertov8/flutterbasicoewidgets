import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    List<Image> imgs = [
      _img('assets/images/dog1.png'),
      _img('assets/images/dog2.png'),
      _img('assets/images/dog3.png'),
      _img('assets/images/dog4.png'),
      _img('assets/images/dog5.png'),
    ];

    return ListView.builder(
      itemCount: imgs.length,
      itemExtent: 350,
      itemBuilder: (context, index) {
        return imgs[index];
      },
    );
  }

  Image _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
