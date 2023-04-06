import 'package:flutter/material.dart';
import 'package:statboard_flutter_app/features/Business/Presentation/screens/editstatkeepers/editstatkeepers_screen.dart';
import 'package:statboard_flutter_app/shared/routes/navigate.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

class StatkeepersProfileContainer extends StatelessWidget {
  const StatkeepersProfileContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigate.to(context, EditStatKeepersScreen.id),
      child: Container(
          width: 200,
          height: 260,
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
              height: 120,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                    ),
                    child: Image.asset(
                      'assets/images/cover.png',

                      fit: BoxFit.cover,
                      height: 80, // specify height
                      width: double.infinity,
                    ),
                  ),
                  Positioned(
                    left: 55,
                    top: 50,
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/avatarimage.png',
                        ),
                        radius: 30,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 3,
            ),
            MyText.simpleblackText(
              "Elijah Oliver",
            ),
            SizedBox(
              height: 5,
            ),
            Container(
                width: 130,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xffd5efff),
                ),
                child: Center(
                  child: Text(
                    "California Stadium",
                    style: TextStyle(
                      color: Color(0xff00b0f0),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Container(
                width: 70,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: Color(0xffd5efff),
                ),
                child: Center(
                  child: Text(
                    "Court A",
                    style: TextStyle(
                      color: Color(0xff00b0f0),
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
            SizedBox(
              height: 5,
            ),
            Text(
              "9800-2421-5621",
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "elijaholiver@gmail.com",
              style: TextStyle(
                color: Colors.black,
                fontSize: 11,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ])),
    );
  }
}
