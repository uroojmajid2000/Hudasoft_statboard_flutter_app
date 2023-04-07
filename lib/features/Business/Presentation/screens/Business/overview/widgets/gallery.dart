import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';

import '../../imageDetails/imagedetails.dart';

// class Gallery extends StatelessWidget {
//   const Gallery({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 329.33,
//       height: 150,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x19000000),
//             blurRadius: 10,
//             offset: Offset(0, 0),
//           ),
//         ],
//         color: Colors.white,
//         border: Border.all(
//           color: Colors.black,
//           width: 2,
//         ),
//       ),
//       child: Image.asset(
//         // 'assets/images/media.png',
//         'assets/images/imagetwo.png',
//         fit: BoxFit.fill,
//       ),
//     );
//   }
// }
class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, ImageDetailsScreen.id),
      child: Container(
        width: 329.33,
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0x19000000),
              blurRadius: 10,
              offset: Offset(0, 0),
            ),
          ],
          color: Colors.white,
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            // 'assets/images/imagetwo.png',
            'assets/images/image.png',
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
