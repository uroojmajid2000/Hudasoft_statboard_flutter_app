import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/resources/colors.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/search_bar.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../imageDetails/imagedetails.dart';
import '../uploadmedia/upload_media.dart';

part 'widgets/body.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  static String id = "gallery_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Gallery',
      currentTab: 4,
      body:
      //  const SingleChildScrollView(
      //   scrollDirection: Axis.vertical,
      //   child:
         Body(),
      // ),
    );
  }
}
