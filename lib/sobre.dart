import 'package:flutter/material.dart';

import './components/menu.dart';

class Sobre extends StatelessWidget {
  const Sobre({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Flutter',
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: const SobrePage(title: 'Sobre'),
    );
  }
}

class SobrePage extends StatefulWidget {
  const SobrePage({super.key, required this.title});
  final String title;

  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(context),
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              './lib/assets/images/logo.png',
              width: 300,
              height: 300,
            ),
          ],
        ),
      ),
    );
  }
}
