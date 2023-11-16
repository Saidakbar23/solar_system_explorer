import 'package:flutter/material.dart';

class CarouselPageTracker extends StatelessWidget {
  CarouselPageTracker({required this.activePage});

  final int activePage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(9, (indexDots) {
        return Container(
          width: activePage % 9 == indexDots % 9 ? 18 : 8,
          height: 8,
          margin: EdgeInsets.only(right: 3.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: activePage % 9 == indexDots % 9
                ? Colors.white
                : Colors.white.withOpacity(0.5),
          ),
        );
      }),
    );
  }
}
