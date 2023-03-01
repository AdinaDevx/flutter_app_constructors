import 'package:flutter/material.dart';
import 'package:flutter_app_constructors/pages/second_page.dart';
import 'package:flutter_app_constructors/pages/third_page.dart';

// ignore: must_be_immutable
class FirstPage extends StatelessWidget {
  FirstPage({Key key}) : super(key: key);

  String som = '1500 som';
  String dollar = '4000 dollar';
  String tenge = '100 tenge';

  Icon iconka = const Icon(Icons.rocket);
  int san1 = 1234;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SecondPage(
                        somKelsin: som,
                        dollarKelsin: dollar,
                        text: tenge,
                        iconkaKelsin: iconka.icon,
                        san: san1,
                      ),
                    ),
                  ),
                  child: const Text('FirstPage'),
                ),
                Text(som),
              ],
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ThirdPage(
                    sanKelsin: san1,
                  ),
                ),
              ),
            ),
            InkWell(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ThirdPage(
                          sanKelsin: san1,
                        ),
                      ),
                    ),
                child: Text(som, style: const TextStyle(fontSize: 35))),
            Text(dollar, style: const TextStyle(fontSize: 35)),
            Text(tenge, style: const TextStyle(fontSize: 35)),
            const Icon(
              Icons.favorite,
              color: Colors.red,
              size: 100,
            ),
          ],
        ),
      ),
    );
  }
}
