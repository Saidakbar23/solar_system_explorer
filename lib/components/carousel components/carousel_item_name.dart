import 'package:flutter/material.dart';

class CarouselItemName extends StatelessWidget {
  CarouselItemName({required this.object});

  final String object;

  @override
  Widget build(BuildContext context) {
    return Text(
      object.toUpperCase(),
      style: Theme.of(context).textTheme.headline6!.copyWith(
            fontFamily: 'Angora',
            fontSize: 50.0,
          ),
    );
  }
}
