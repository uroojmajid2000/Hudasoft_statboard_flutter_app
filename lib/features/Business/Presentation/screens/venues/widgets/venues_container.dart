import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../shared/widgets/text.dart';

class VenuesContainer extends StatelessWidget {
  const VenuesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 200,
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
        child: Column(children: [
          SizedBox(
            height: 140,
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  child: Image.asset(
                    // 'assets/images/imagetwo.png',
                    'assets/images/image.png',
                    fit: BoxFit.cover,
                    height: 100, // specify height
                    width: double.infinity,
                  ),
                ),

                // SizedBox(
                //   height: 100, // specify height
                //   width: double.infinity, // take up all available width
                //   child: Image.asset(
                //     'assets/images/cover.png',
                //     fit: BoxFit.fill,
                //   ),
                // ),
                Positioned(
                  left: 12,
                  top: 70,
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 30,
                    ),
                  ),
                ),
                Positioned(
                  right: 12,
                  top: 110,
                  child: Center(
                    child: Container(
                      width: 59,
                      height: 22.02,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Color(0xffebfdf2),
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 7,
                        vertical: 2,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: 8,
                            height: 8,
                            padding: const EdgeInsets.all(1),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 6,
                                  height: 6,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Color(0xff12b669),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "Active",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff027947),
                              fontSize: 10,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "California Stadium",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Row(
                      children: [
                        SvgPicture.asset('assets/icons/people.svg'),
                        SizedBox(
                          width: 3,
                        ),
                        MyText.simpleblueText("15"),
                      ],
                    ),
                  ]))
        ]));
  }
}
