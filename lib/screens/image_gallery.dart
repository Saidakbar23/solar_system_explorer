import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'detail_page.dart';
import 'package:animations/animations.dart';
import '../components/backend/backend.dart';

class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key, required this.planet});

  final String planet;

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: FutureBuilder(
            future: fetchData('images', widget.planet),
            builder: (BuildContext context,
                AsyncSnapshot<List<Map<String, dynamic>>> snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(child: CircularProgressIndicator());
              }
              if (snapshot.hasError) {
                return Center(child: Text('Error: ${snapshot.error}'));
              }
              if (!snapshot.hasData || snapshot.data!.isEmpty) {
                return Center(child: Text('No data available'));
              }
              return MasonryGridView.count(
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemCount: snapshot.data!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: OpenContainer(
                          closedColor: Colors.black,
                          closedBuilder:
                              (BuildContext context, void Function() action) {
                            return GestureDetector(
                              onTap: action,
                              child: Image.network(
                                snapshot.data![index]['image'],
                                fit: BoxFit.cover,
                              ),
                            );
                          },
                          openBuilder: (BuildContext context,
                              void Function({Object? returnValue}) action) {
                            return DetailPage(
                                imagePath: snapshot.data![index]['image']);
                          },
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
