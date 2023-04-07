import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/Business/uploadMediaDetails/widgets/tags.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/button.dart';
import 'package:statboard_flutter_app/shared/widgets/dropdown.dart';
import 'package:statboard_flutter_app/shared/widgets/modal_bottomsheet.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';
import '../gallery/gallery_screen.dart';
import '../teamsdetails/widgets/text_field_team.dart';

part 'widgets/body.dart';

class UploadMediaDetailsScreen extends StatelessWidget {
  const UploadMediaDetailsScreen({Key? key}) : super(key: key);

  static String id = "uploadmedia_details_screen";

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
