import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/venues/widgets/activebutton_container.dart';
import '../../../../../../shared/widgets/text.dart';

class VenuesContainer extends StatelessWidget {
  const VenuesContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 215,
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
                    // 'assets/images/image.png',
                    'assets/images/groundimage.png',
                    fit: BoxFit.cover,
                    height: 100, // specify height
                    width: double.infinity,
                  ),
                ),
                Positioned(
                  left: 12,
                  top: 70,
                  child: Center(
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/soccerlogo.png',
                      ),
                      radius: 30,
                    ),
                  ),
                ),
                Positioned(
                  right: 12,
                  top: 110,
                  child: Center(
                    child: ActiveContainer(),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
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
                  ])),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Stack(children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatarimage.png',
                    ),
                    radius: 15,
                  ),
                ],
              ),
              Positioned(
                left: 25,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/michel.png',
                  ),
                  radius: 15,
                ),
              ),
              Positioned(
                left: 45,
                child: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/images/robert.png',
                  ),
                  radius: 15,
                ),
              ),
              Positioned(
                  left: 80,
                  top: 10,
                  child: Center(
                    child: Text(
                      "+5 more",
                      style: TextStyle(
                        color: Color(0xff646464),
                        fontSize: 10,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ))
            ]),
          )
        ]));
  }
}
