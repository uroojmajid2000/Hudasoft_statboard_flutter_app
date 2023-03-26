part of '../requesttojoin_tournament.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            const SizedBox(height: 25),
            SvgPicture.asset(
              'assets/icons/requesttournament.svg',
            ),
            Text(
              "Request to join tournament",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 18),
            Text(
              "Please select the team from which \nyou want to join the tournament",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xff454545),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Teams",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamsCard(
                  alphabet: 'T',
                  color: Color(0xff5642a9),
                  text: "Tornado",
                ),
                TeamsCard(
                  alphabet: 'S',
                  color: Color(0xffEF4C53),
                  text: "Stallion",
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TeamsCard(
                  alphabet: 'T',
                  color: Color(0xff5642a9),
                  text: "Tornado",
                ),
                TeamsCard(
                  alphabet: 'S',
                  color: Color(0xffEF4C53),
                  text: "Stallion",
                ),
              ],
            ),
            // Expanded(
            //   child: GridView.count(
            //     crossAxisCount: 2,
            //     mainAxisSpacing: 15,
            //     crossAxisSpacing: 10,
            //     // padding: EdgeInsets.all(20),
            //     children: [
            //       TeamsCard(
            //         alphabet: 'T',
            //         color: Color(0xff5642a9),
            //         text: "Tornado",
            //       ),
            //       TeamsCard(
            //         alphabet: 'S',
            //         color: Color(0xffEF4C53),
            //         text: "Stallion",
            //       ),
            //       TeamsCard(
            //         alphabet: 'T',
            //         color: Color(0xff5642a9),
            //         text: "Tornado",
            //       ),
            //       TeamsCard(
            //         alphabet: 'S',
            //         color: Color(0xffEF4C53),
            //         text: "Stallion",
            //       ),
            //     ],
            //   ),
            // ),
            SizedBox(
              height: 25,
            ),
            Button(
                child: Text('Request To Join'),
                onPressed: () {
                  CustomModalBottomSheet.show(
                      context: context,
                      message:
                          "Your request to join the tournament \nhas been successfully sent.",
                      onPressed: () {
                        Navigate.to(context, OverviewScreen.id);
                      });
                })
          ],
        ),
      ),
    );
  }
}
