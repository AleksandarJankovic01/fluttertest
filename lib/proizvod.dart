import 'package:flutter/material.dart';
import 'package:fluttertest/dialog_details.dart';
import 'package:fluttertest/popup.dart';

class Proizvod extends StatelessWidget {
  const Proizvod(this.naziv,this.mapa, {this.iconColor,this.boja,this.ikona, this.cena = 150, super.key});

  final String naziv;
  final double cena;
  final IconData? ikona;
  final Color? boja;
  final Color? iconColor;
  final List<DialogDetails> mapa;

  TextStyle textStyle({Color? color}) {
    return TextStyle(fontWeight: FontWeight.bold, fontSize: 26, color: color ?? Colors.black87);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: TextButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (ctx) {
              return PopupWidget(mapa, Icon(ikona, color: iconColor));
            },
          );
        },
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
              if (ikona != null) Icon(ikona, color: iconColor ?? Colors.black87) ,
              Text(
                naziv,
                style: textStyle(
                  color: boja,
                ),
              ),
              const Spacer(),
              Text(
                '${cena.toStringAsFixed(2)} din',
                style: textStyle(
                  color: Colors.black87,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
