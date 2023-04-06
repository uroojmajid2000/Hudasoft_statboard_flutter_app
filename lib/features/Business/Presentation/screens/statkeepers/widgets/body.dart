part of '../statkeepers_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Text(
            '+',
            style: TextStyle(color: Colors.white, fontSize: 45),
          ),
          onPressed: () {
            // Navigate.to(context, TeamsDetails.id);
          },
        ),
        // ),
        body: SingleChildScrollView(
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
                    const SizedBox(height: 15),
                    Row(
                      children: [
                        Expanded(child: StatkeepersProfileContainer()),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(child: StatkeepersProfileContainer()),
                      ],
                    ),
                    const SizedBox(height: 40),
                    Row(
                      children: [
                        Expanded(child: StatkeepersProfileContainer()),
                        SizedBox(
                          width: 18,
                        ),
                        Expanded(child: StatkeepersProfileContainer()),
                      ],
                    ),
                  ])),
        ));
  }
}
