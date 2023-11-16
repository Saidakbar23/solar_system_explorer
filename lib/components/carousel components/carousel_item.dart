import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  CarouselItem({required this.object});

  final String object;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50.0),
      child: Image.asset(
        'images/$object.png',
      ),
    );
  }
}
