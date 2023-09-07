import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import './components/menu.dart';

class Calculadora extends StatelessWidget {
  const Calculadora({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atividade Flutter',
      theme: ThemeData(colorScheme: ColorScheme.dark()),
      home: const CalculadoraPage(title: 'Calculadora'),
    );
  }
}

class CalculadoraPage extends StatefulWidget {
  const CalculadoraPage({super.key, required this.title});
  final String title;

  @override
  State<CalculadoraPage> createState() => _CalculadoraPageState();
}

class _CalculadoraPageState extends State<CalculadoraPage> {
  final TextEditingController inputController = TextEditingController();

  void calcular() {
    try {
      Parser p = Parser();
      Expression exp = p.parse(inputController.text);
      ContextModel cm = ContextModel();
      double eval = exp.evaluate(EvaluationType.REAL, cm);
      setState(() {
        inputController.text = eval.toString();
      });
    } catch (e) {
      setState(() {
        inputController.text = 'Erro';
      });
    }
  }

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
            TextField(
              controller: inputController,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '', enabled: false),
              keyboardType: TextInputType.text,
            ),
            Container(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text = '';
                  },
                  child: const Text('C'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '.';
                  },
                  child: const Text('.'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '0';
                  },
                  child: const Text('0'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '+';
                  },
                  child: const Text('+'),
                ),
              ],
            ),
            Container(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '1';
                  },
                  child: const Text('1'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '2';
                  },
                  child: const Text('2'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '3';
                  },
                  child: const Text('3'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '-';
                  },
                  child: const Text('-'),
                ),
              ],
            ),
            Container(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '4';
                  },
                  child: const Text('4'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '5';
                  },
                  child: const Text('5'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '6';
                  },
                  child: const Text('6'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '*';
                  },
                  child: const Text('*'),
                ),
              ],
            ),
            Container(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '7';
                  },
                  child: const Text('7'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '8';
                  },
                  child: const Text('8'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '9';
                  },
                  child: const Text('9'),
                ),
                Container(width: 15),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateColor.resolveWith(
                        (states) => Colors.green),
                    minimumSize: MaterialStateProperty.all(const Size(70, 70)),
                  ),
                  onPressed: () {
                    inputController.text += '/';
                  },
                  child: const Text('/'),
                ),
              ],
            ),
            Container(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateColor.resolveWith((states) => Colors.red),
                    minimumSize: MaterialStateProperty.all(const Size(325, 70)),
                  ),
                  onPressed: () {
                    calcular();
                  },
                  child: const Text('='),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
