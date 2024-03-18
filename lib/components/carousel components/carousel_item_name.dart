import 'package:flutter/material.dart';

class CarouselItemName extends StatelessWidget {
  CarouselItemName({required this.object});

  final String object;

  @override
  Widget build(BuildContext context) {
    return Text(
      object.toUpperCase(),
      style: const TextStyle(
        fontFamily: 'Angora',
        fontSize: 50.0,
      ),
    );
  }
}
