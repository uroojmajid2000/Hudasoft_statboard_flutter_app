import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:statboard_flutter_app/shared/widgets/text.dart';

import '../../overview/widgets/upcommingContainer.dart';

class SeasonsContainer extends StatelessWidget {
  const SeasonsContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 138,
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
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/football.svg'),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          MyText.simplegreyText(
                            "25 SEP 10 AM- California Stadium",
                          ),
                          MyText.simpleblackText(
                            "Football",
                          ),
                        ]),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Color(0xff5642a9),
                        radius: 20,
                        child: Text(
                          "T",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    MyText.labelText(
                      "Tornado",
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [UpcommingContainer()],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 134, 3, 117),
                        radius: 20,
                        child: Text(
                          "S",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w700,
                          ),
                        )),
                    SizedBox(
                      height: 3,
                    ),
                    MyText.labelText(
                      "Tornado",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
