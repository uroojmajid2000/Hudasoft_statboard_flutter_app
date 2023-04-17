import 'package:flutter/cupertino.dart';
import 'package:statboard_flutter_app/features/Business/presentation/screens/inProgresstournament/widgets/results_container.dart';

class Results extends StatefulWidget {
  const Results({super.key});

  @override
  State<Results> createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(
              height: 25,
            ),
            ResultsContainer(teamName: 'Tornado'),
            SizedBox(
              height: 25,
            ),
            ResultsContainer(teamName: 'Tornado'),
            SizedBox(
              height: 25,
            ),
            ResultsContainer(teamName: 'Tornado'),     SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
