part of '../viewall_tournament_screen.dart';

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
      child: Column(
        children: [
          const SizedBox(height: 25),
          MySearchBar(
            hintText: 'Search',
            onChange: (value) {},
            prefixIcon: 'assets/icons/search.png',
            suffixIcon: 'assets/icons/filter.png',
          ),
          const SizedBox(height: 23),
          SizedBox(width: double.infinity, child: UpcomingTournaments()),
          const SizedBox(height: 23),
          SizedBox(width: double.infinity, child: UpcomingTournaments()),
        ],
      ),
    );
  }
}
