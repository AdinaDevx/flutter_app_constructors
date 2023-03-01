import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SecondPage extends StatelessWidget {
  SecondPage({
    Key key,
    this.somKelsin,
    this.dollarKelsin,
    this.text,
    this.iconkaKelsin,
    this.san,
  }) : super(key: key);

  String somKelsin;
  String dollarKelsin;
  String text;
  IconData iconkaKelsin;
  int san;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                    ),
                child: const Text('')),
            Text(dollarKelsin),
            Text(somKelsin),
            Text(text),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: const TextStyle(fontSize: 40),
            ),
            Icon(
              iconkaKelsin,
              size: 100,
              color: Colors.blue,
            ),
            Text(
              san.toString(),
            ),
          ],
        ),
      ),
    );
  }
}
