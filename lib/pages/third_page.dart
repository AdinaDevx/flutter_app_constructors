import 'package:flutter/material.dart';
import 'package:flutter_app_constructors/pages/second_page.dart';

// ignore: must_be_immutable
class ThirdPage extends StatelessWidget {
  ThirdPage({
    this.sanKelsin,
    Key key,
  }) : super(key: key);
  int sanKelsin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SecondPage()),
          ),
          child: Text('ThirdPage $sanKelsin'),
        ),
      ),
    );
  }
}
