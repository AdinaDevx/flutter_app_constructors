import 'package:flutter/material.dart';
import 'package:flutter_app_constructors/pages/first_page.dart';

void main() {
  runApp(const MisalConstructors());
}

class MisalConstructors extends StatelessWidget {
  const MisalConstructors({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
