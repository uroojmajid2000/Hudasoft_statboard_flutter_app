part of '../teams_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Padding(
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
          const SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                Navigate.next(context, AllTeams.id);
              },
              child: TeamsContainer()),
          const SizedBox(height: 18),
          GestureDetector(
              onTap: () {
                Navigate.next(context, AllTeams.id);
              },
              child: TeamsContainer()),
          const SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: kPrimaryColor,
                child: Text(
                  '+',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                ),
                onPressed: () {
                  Navigate.next(context, TeamsDetails.id);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
