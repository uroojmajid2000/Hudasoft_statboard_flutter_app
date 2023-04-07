import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

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
