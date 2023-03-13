import 'package:flutter/material.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  static String id = "gallery_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Gallery',
      currentTab: 4,
      body: Body(),

      // body: const SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child: Body(),
      // ),
    );
  }
}
