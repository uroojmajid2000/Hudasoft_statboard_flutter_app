import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import '../../../../../resources/colors.dart';
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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Body(),
      ),
    );
  }
}
