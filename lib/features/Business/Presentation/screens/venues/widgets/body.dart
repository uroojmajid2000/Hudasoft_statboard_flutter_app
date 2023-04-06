part of '../venues_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 25),
                MySearchBar(
                  hintText: 'Search teams',
                  onChange: (value) {},
                  prefixIcon: 'assets/icons/search.png',
                  suffixIcon: 'assets/icons/filter.png',
                ),
                const SizedBox(height: 25),
                MyText.HeadingText(
                  "All ",
                ),
                // const SizedBox(height: 15),
                const VenueListView()
              ])),
    );
  }
}
