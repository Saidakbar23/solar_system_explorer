import 'package:flutter/material.dart';

class CarouselItem extends StatelessWidget {
  CarouselItem({required this.object});

  final String object;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'images/$object.png',
            width: 350,
          ),
          SizedBox(
            height: 20.0,
          ),
        ],
      ),
    );
  }
}
