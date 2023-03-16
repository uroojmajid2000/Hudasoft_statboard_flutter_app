import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../resources/colors.dart';
import '../../../../../shared/layout/layout_screen.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/text.dart';
import '../gallery/widgets/gallery_grid.dart';
import '../uploadMediaDetails/uploadmedia_details.dart';

part 'widgets/body.dart';

class UploadMediaScreen extends StatelessWidget {
  const UploadMediaScreen({Key? key}) : super(key: key);

  static String id = "uploadmedia_screen";

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
