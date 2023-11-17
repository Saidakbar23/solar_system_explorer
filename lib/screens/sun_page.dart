import 'package:flutter/material.dart';

class SunPage extends StatelessWidget {
  const SunPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onVerticalDragDown: (DragDownDetails) {
        Navigator.pop(context);
      },
      child: Container(
        child: Text(
          "This is sun page.",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
