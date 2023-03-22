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
      floatingActionButton: Positioned(
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Text(
            '+',
            style: TextStyle(color: Colors.white, fontSize: 45),
          ),
          onPressed: () {
            Navigate.to(context, TeamsDetails.id);
          },
        ),
      ),
  
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
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
              const SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: _teamNames.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  mainAxisSpacing: 20,
                  childAspectRatio: 5 / 2,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      Navigate.to(context, AllTeams.id);
                    },
                    child: GridTile(
                      child: TeamsContainer(teamName: _teamNames[index]),
                    ),
                  );
                },
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
