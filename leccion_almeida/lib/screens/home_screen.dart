import 'package:flutter/material.dart';
import '../widgets/number_input.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? _nextNumber;

  void _calculateNextNumber(int number) {
    setState(() {
      _nextNumber = number + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generador de Siguiente Número'),
        backgroundColor: Colors.purple, // Cambié el color a morado
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/numeros.png',
              height: 200, //
            ),
            SizedBox(height: 20),
            NumberInput(
              onNumberChanged: _calculateNextNumber,
            ),
            if (_nextNumber != null)
              Text(
                'El siguiente número es: $_nextNumber',
                style: TextStyle(fontSize: 24),
              ),
          ],
        ),
      ),
    );
  }
}
