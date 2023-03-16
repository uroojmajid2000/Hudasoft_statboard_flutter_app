import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/uploadMediaDetails/widgets/tags.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/modal_bottomsheet.dart';
import '../../../../../shared/widgets/text.dart';
import '../allteams/widgets/filters.dart';
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
