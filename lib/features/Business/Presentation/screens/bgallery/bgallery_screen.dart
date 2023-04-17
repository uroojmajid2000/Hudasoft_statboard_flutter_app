import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/BimageDetails/bimagedetails.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/buploadmedia/bupload_media.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/gallery/widgets/gallery_grid.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';

part 'widgets/body.dart';

class BGalleryScreen extends StatelessWidget {
  const BGalleryScreen({Key? key}) : super(key: key);

  static String id = "bgallery_screen";

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
