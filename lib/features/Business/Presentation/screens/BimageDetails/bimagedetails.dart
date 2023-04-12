import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/buploadmedia/bupload_media.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/imageDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/shared/businesslayout/businesslayout_screen.dart';
import '../../../../../resources/colors.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/search_bar.dart';
import '../../../../../shared/widgets/text.dart';



part 'widgets/body.dart';

class BImageDetailsScreen extends StatelessWidget {
  const BImageDetailsScreen({Key? key}) : super(key: key);

  static String id = "bimagedetails_screen";

  @override
  Widget build(BuildContext context) {
    return BusinessLayout(
      text: 'Gallery',
      currentTab: 4,
      body:
         Body(),

    );
  }
}
