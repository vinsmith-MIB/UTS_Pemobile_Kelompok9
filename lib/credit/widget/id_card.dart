import 'package:flutter/material.dart';

class IDCard extends StatelessWidget {
  final String gambar;
  final double scale;
  const IDCard(this.gambar, {super.key, this.scale = 1});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220 * scale,

      padding: const EdgeInsets.all(10.0),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Color.fromARGB(185, 73, 72, 72),
        
      ),
      child: Stack(children: <Widget>[
        // ignore: avoid_unnecessary_containers
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          child: Image.asset(
            gambar,
            fit: BoxFit.fill,
          ),
        ),
      ]),
    );
  }
}
