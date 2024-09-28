import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

// ignore: camel_case_types, must_be_immutable
class imageView extends StatelessWidget {
  String url;
  imageView({super.key, required this.url});

  @override
  Widget build(BuildContext context) {
    return PhotoView(
        heroAttributes: const PhotoViewHeroAttributes(
            tag:
                'https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png'),
        imageProvider: const NetworkImage(
            'https://i02.appmifile.com/images/2019/03/06/829199af-238d-46b6-8294-525d9e6e8226.png'));
  }
}
