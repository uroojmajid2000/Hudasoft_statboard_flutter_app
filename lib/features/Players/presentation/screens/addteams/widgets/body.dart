part of '../addteams_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const SizedBox(height: 25),
            MySearchBar(
              hintText: 'Search gallery',
              onChange: (value) {},
              prefixIcon: 'assets/icons/search.png',
              suffixIcon: 'assets/icons/filter.png',
            ),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: MyText.HeadingText(
                "Invited",
              ),
            ),
            SizedBox(height: 15),
            CancelFiends(),
            SizedBox(height: 15),
            CancelFiends(),
            SizedBox(height: 15),
            CancelFiends(),
            SizedBox(height: 15),
            CancelFiends(),
            SizedBox(height: 15),
            CancelFiends(),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: MyText.HeadingText(
                "Friends",
              ),
            ),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            const SizedBox(height: 25),
            Align(
              alignment: Alignment.topLeft,
              child: MyText.HeadingText(
                "Recently played with",
              ),
            ),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
            SizedBox(height: 10),
            InviteFiends(),
          ],
        ),
      ),
    );
  }
}
