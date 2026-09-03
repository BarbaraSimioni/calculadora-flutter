import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _resultado = '';
  int _operacaoSelecionada = 1;

  final TextEditingController _controller1 = TextEditingController();
  final TextEditingController _controller2 = TextEditingController();

  void _calcular(int operacao, double numero1, double numero2) {
    double resultado = 0;
    bool sucessoOperacao = false;

    switch (operacao) {
      case 1:
        resultado = numero1 + numero2;
        sucessoOperacao = true;
        break;
      case 2:
        resultado = numero1 - numero2;
        sucessoOperacao = true;
        break;
      case 3:
        resultado = numero1 * numero2;
        sucessoOperacao = true;
        break;
      case 4:
        if (numero2 == 0) {
          sucessoOperacao = false;
        } else {
          resultado = numero1 / numero2;
          sucessoOperacao = true;
        }
        break;
      case 5:
        resultado = pow(numero1, numero2).toDouble();
        sucessoOperacao = true;
        break;
      case 6:
        if (numero2 == 0) {
          sucessoOperacao = false;
        } else {
          resultado = numero1 % numero2;
          sucessoOperacao = true;
        }
        break;
      default:
        sucessoOperacao = false;
        break;
    }

    setState(() {
      if (sucessoOperacao) {
        _resultado = 'Resultado: $resultado';
      } else {
        _resultado = 'Operação inválida ou divisão por zero';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _controller1,
              decoration: const InputDecoration(labelText: 'Primeiro Número'),
            ),
            TextField(
              controller: _controller2,
              decoration: const InputDecoration(labelText: 'Segundo Número'),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 1;
                    });
                  },
                  child: const Text('+'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 2;
                    });
                  },
                  child: const Text('-'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 3;
                    });
                  },
                  child: const Text('x'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 4;
                    });
                  },
                  child: const Text('/'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 5;
                    });
                  },
                  child: const Text('^'),
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _operacaoSelecionada = 6;
                    });
                  },
                  child: const Text('%'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text('Operação selecionada: $_operacaoSelecionada'),
            Text(_resultado),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                double? numero1 = double.tryParse(_controller1.text);
                double? numero2 = double.tryParse(_controller2.text);

                if (numero1 == null || numero2 == null) {
                  setState(() {
                    _resultado = 'Digite números válidos';
                  });
                  return;
                }

                _calcular(_operacaoSelecionada, numero1, numero2);
              },
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}