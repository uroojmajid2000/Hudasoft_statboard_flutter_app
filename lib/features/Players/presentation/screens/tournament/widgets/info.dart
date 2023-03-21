import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Players/presentation/screens/tournament/widgets/infocard.dart';

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
            InfoCard(),
            SizedBox(
              height: 18,
            ),
          ],
        ),
      ),
    );
  }
}
