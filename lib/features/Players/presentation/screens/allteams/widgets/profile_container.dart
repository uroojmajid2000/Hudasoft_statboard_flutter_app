// import 'package:flutter/material.dart';

// class ProfileContainer extends StatelessWidget {
//   const ProfileContainer({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 105,
//       height: 150,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         boxShadow: [
//           BoxShadow(
//             color: Color(0x19000000),
//             blurRadius: 10,
//             offset: Offset(0, 0),
//           ),
//         ],
//         color: Colors.white,
//       ),
//       child: Stack(
//         children: [
//           Positioned.fill(
//             child: Image.asset('assets/images/profile.png'),
//           ),
//           // Positioned(
//           //   left: 48.50,
//           //   top: 494.59,
//           //   child: Container(
//           //     width: 40,
//           //     height: 40,
//           //     decoration: BoxDecoration(
//           //       shape: BoxShape.circle,
//           //     ),
//           //     child:
//           Positioned(
//             left: 45.50,
//             top: 20,
//             child: CircleAvatar(
//               backgroundImage:
//                   NetworkImage('https://picsum.photos/id/237/200/300'),
//             ),
//           ),
//           //   ),
//           // ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

import '../../../../../../shared/widgets/button.dart';
import '../../../../../../shared/widgets/text.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 105,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Color(0x19000000),
            blurRadius: 10,
            offset: Offset(0, 0),
          ),
        ],
        color: Colors.white,
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/profile.png',
              alignment: Alignment.topCenter,
              fit: BoxFit.fitWidth,
            ),
          ),
          Positioned(
            left: 30,
            top: 35,
            child: CircleAvatar(
              backgroundImage:
                  // NetworkImage('https://picsum.photos/id/237/200/300'),
                  AssetImage(
                'assets/images/avatarimage.png',
              ),
              radius: 22,
            ),
          ),
          Positioned(
            bottom: 2,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Elijah John',
                  style: TextStyle(
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                SizedBox(
                  width: 70,
                  height: 28,
                  child: Button(
                      child: Text(
                        "Follow",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      onPressed: () => {
                            // Navigate.next(context, OverviewScreen.id),
                            // Navigate.next(context, HomeScreen.id),
                          }),
                ),
                SizedBox(
                  height: 7,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
