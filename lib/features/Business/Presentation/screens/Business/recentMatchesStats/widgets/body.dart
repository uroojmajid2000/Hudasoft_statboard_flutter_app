part of '../recentmatchesstats_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      // child: Container(
      //   decoration: BoxDecoration(
      //     gradient: LinearGradient(
      //       begin: Alignment.topLeft,
      //       end: Alignment.bottomRight,
      //       colors: [
      //         Color.fromRGBO(210, 143, 82, 0.2),
      //         Color.fromRGBO(0, 163, 46, 0.01),
      //       ],
      //     ),
      //   ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Color.fromRGBO(210, 143, 82, 0.2),
                  Color.fromRGBO(0, 163, 46, 0.01),
                ],
              ),
            ),
            child: StatsDetails(),
          ),
          SizedBox(
            height: 15,
          ),
          TeamContainer(),
          SizedBox(
            height: 20,
          )
        ],
      ),
      // ),
    );
  }

  DataColumn ColumnVerticleLine() {
    return DataColumn(
        label: VerticalDivider(
      color: Colors.grey,
      width: 1,
      thickness: 1,
    ));
  }

  DataCell VerticleLine() {
    return DataCell(VerticalDivider(
      color: Colors.grey,
      width: 1,
      thickness: 1,
    ));
  }
}
