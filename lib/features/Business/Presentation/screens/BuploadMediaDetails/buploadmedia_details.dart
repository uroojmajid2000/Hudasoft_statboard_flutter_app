import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/bgallery/bgallery_screen.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/teamsdetails/widgets/text_field_team.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/uploadMediaDetails/widgets/tags.dart';
import '../../../../../shared/routes/navigate.dart';
import '../../../../../shared/widgets/button.dart';
import '../../../../../shared/widgets/dropdown.dart';
import '../../../../../shared/widgets/modal_bottomsheet.dart';
import '../../../../../shared/widgets/text.dart';
part 'widgets/body.dart';

class BUploadMediaDetailsScreen extends StatelessWidget {
  const BUploadMediaDetailsScreen({Key? key}) : super(key: key);

  static String id = "Buploadmedia_details_screen";

  @override
  Widget build(BuildContext context) {
    return Body();
  }
}
