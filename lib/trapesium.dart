import 'package:flutter/material.dart';
import 'dart:math';

class Trapesium extends StatefulWidget {
  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  double _sisiA = 0;
  double _sisiB = 0;
  double _tinggi = 0;

  double _luas = 0;
  double _keliling = 0;

  void _hitungLuas() {
    setState(() {
      _luas = (_sisiA + _sisiB) * _tinggi / 2;
    });
  }

  void _hitungKeliling() {
    setState(() {
      _keliling = _sisiA +
          _sisiB +
          2 * sqrt(_tinggi * _tinggi + pow((_sisiB - _sisiA) / 2, 2));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trapesium'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sisi A',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _sisiA = double.parse(value);
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Sisi B',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _sisiB = double.parse(value);
                });
              },
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                labelText: 'Tinggi',
              ),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                setState(() {
                  _tinggi = double.parse(value);
                });
              },
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  _hitungLuas();
                  _hitungKeliling();
                },
                child: Text('Hitung'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Luas: $_luas',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            Text(
              'Keliling: $_keliling',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}