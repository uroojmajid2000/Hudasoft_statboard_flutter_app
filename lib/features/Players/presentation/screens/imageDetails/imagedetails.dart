import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/widgets/tags.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

import '../uploadmedia/upload_media.dart';

part 'widgets/body.dart';

class ImageDetailsScreen extends StatelessWidget {
  const ImageDetailsScreen({Key? key}) : super(key: key);

  static String id = "imagedetails_screen";

  @override
  Widget build(BuildContext context) {
    return Layout(
      text: 'Gallery',
      currentTab: 4,
      body:
         Body(),

    );
  }
}
