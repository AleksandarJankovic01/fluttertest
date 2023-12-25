import 'package:flutter/material.dart';
import 'package:fluttertest/dialog_details.dart';

class PopupWidget extends StatelessWidget {
  const PopupWidget(this.mapa, this.icon, {super.key});

  final List<DialogDetails> mapa;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      //icon: Icon(Icons.menu_book_outlined,size: 24,color: Colors.white70,),
      title: const Text(
        "Menu:",
        style: TextStyle(fontStyle: FontStyle.italic, fontWeight: FontWeight.bold, color: Colors.white70),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var a in mapa)
            Row(
              children: [
                icon,
                Text(
                  a.levi,
                  style:
                      TextStyle(fontStyle: FontStyle.italic, color: a.boja, fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  a.desni,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
        ],
      ),
      backgroundColor: Colors.black,
      elevation: 24.0,
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('close'),
        )
      ],
    );
  }
}
