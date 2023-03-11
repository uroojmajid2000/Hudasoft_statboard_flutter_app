import 'package:flutter/material.dart';
import '../../../../../shared/layout/layout_screen.dart';

part 'widgets/body.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  static String id = "gallery_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Gallery',
      currentTab: 4,
      body: const SingleChildScrollView(
        child: Body(),
      ),
    );
  }
}
