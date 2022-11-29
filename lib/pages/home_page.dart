import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //
  //

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title, style: Theme.of(context).textTheme.headline1),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Titulo da page',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Nome do produto',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text(
              'valor',
              style: Theme.of(context).textTheme.caption,
            ),
          ],
        ),
      ),
    );
  }
}
