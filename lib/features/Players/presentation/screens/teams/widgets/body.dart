part of '../teams_screen.dart';

class Body extends StatefulWidget {
  Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> _teamNames = [
    'Tornado',
    'Vulcan',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton:
            //  Positioned(
            //   bottom: 20,
            //   right: 20,
            //   child:
            FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: SvgPicture.asset(
            'assets/icons/plusicon.svg',
            width: 20,
            height: 20,
            // color: Colors.red,
          ),
          onPressed: () {
            Navigate.to(context, TeamsDetails.id);
          },
        ),
        // ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              MySearchBar(
                hintText: 'Search ',
                onChange: (value) {},
                prefixIcon: 'assets/icons/search.png',
                suffixIcon: 'assets/icons/filter.png',
              ),
              const SizedBox(height: 25),
              MyText.HeadingText(
                "All ",
              ),
              const SizedBox(height: 20),
              TeamsList(teamNames: _teamNames),
              const SizedBox(height: 50),
            ],
          ),
        ));
  }
}
