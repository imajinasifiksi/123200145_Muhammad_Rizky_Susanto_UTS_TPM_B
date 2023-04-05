import 'package:flutter/material.dart';
import 'dart:math';

class Tabung extends StatefulWidget {
  @override
  _TabungState createState() => _TabungState();
}

class _TabungState extends State<Tabung> {
  final TextEditingController _radiusController = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double _volume = 0.0;
  double _luaspermukaan = 0.0;

  void _calculate() {
    double jari = double.parse(_radiusController.text);
    double tinggi = double.parse(_heightController.text);

    setState(() {
      _volume = pi * pow(jari, 2) * tinggi;
      _luaspermukaan = 2 * pi * jari * (jari + tinggi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tabung'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _radiusController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Jari-jari (r)',
                  hintText: 'Masukkan jari-jari tabung',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextField(
                controller: _heightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Tinggi (h)',
                  hintText: 'Masukkan tinggi tabung',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: _calculate,
                child: Text('Hitung'),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Volume: $_volume'),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Luas Permukaan: $_luaspermukaan'),
            ),
          ],
        ),
      ),
    );
  }
}