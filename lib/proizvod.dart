import 'package:flutter/material.dart';

class Proizvod extends StatelessWidget {
  const Proizvod(this.naziv, {this.ikona, this.cena = 150, super.key});

  final String naziv;
  final double cena;
  final Icon? ikona;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Row(
          children: [
            if (ikona != null) ikona!,
            Text(
              naziv,
              style: textStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            Text(
              '${cena.toStringAsFixed(2)} din',
              style: textStyle(
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle textStyle({Color color = Colors.black54}) {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: color);
  }
}
