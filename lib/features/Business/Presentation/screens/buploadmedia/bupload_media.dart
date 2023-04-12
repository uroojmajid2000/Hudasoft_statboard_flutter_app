import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/BuploadMediaDetails/buploadmedia_details.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';

import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
// import '../gallery/widgets/gallery_grid.dart';
// import '../uploadMediaDetails/uploadmedia_details.dart';

part 'widgets/body.dart';

class BUploadMediaScreen extends StatelessWidget {
  const BUploadMediaScreen({Key? key}) : super(key: key);

  static String id = "Buploadmedia_screen";

  @override
  Widget build(BuildContext context) {
    return Body();
    //  Layout(
    //   text: 'Gallery',
    //   currentTab: 4,
    //   body: Body(),
    // );
  }
}
