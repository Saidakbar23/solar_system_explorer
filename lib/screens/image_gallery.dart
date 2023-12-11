import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  final List images = [
    'images/sun_gallery/GSFC_20171208_Archive_e000393~orig.jpg',
    'images/sun_gallery/GSFC_20171208_Archive_e001435~large.jpg',
    'images/sun_gallery/OS-2913-67 Solar Flare X1 from AR2994 in \'Motion\' © Miguel Claro - Astronomy Photographer of the Year 2023 Our Sun.jpg',
    'images/sun_gallery/OS-23082-39 Grazing Mammoths © Rafael Schmall - Astronomy Photographer of the Year 2023 Our Sun.jpg',
    'images/sun_gallery/OS-29871-36 The Great Solar Flare © Mehmet Ergün - Astronomy Photographer of the Year 2023 Our Sun.jpg',
    'images/sun_gallery/OS-161368-21 Loop Prominence © Eduardo Schaberger Poupeau - Astronomy Photographer of the Year 2023 Our Sun.jpg',
    'images/sun_gallery/OS-161368-27 A Sun Question © Eduardo Schaberger Poupeau - Astronomy Photographer of the Year 2023 Our Sun.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double itemWidth = 250;
    double crossAxisCount = w / (itemWidth);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: MasonryGridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 7,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(images[index]),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
