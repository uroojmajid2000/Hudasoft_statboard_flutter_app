part of '../editteams_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _name = TextEditingController();
  final _sports = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return
   
        SingleChildScrollView(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: SizedBox(
            // height: size.height * 0.8,
            child: Center(
              child: Form(
                key: _formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText(
                            "Team Name",
                          ),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyTextFieldTeam(
                        controller: _name,
                        hintText: 'Tornado',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText("Sports"),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyDropdown(
                        items: ['Football', 'Basketball'],
                        selected: 'Football',
                        onChange: (String? value) {
                          print('Selected: $value');
                        },
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText("Total Players:15"),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MySearchBar(
                        hintText: 'Search gallery',
                        onChange: (value) {},
                        prefixIcon: 'assets/icons/search.png',
                        suffixIcon: 'assets/icons/filter.png',
                      ),
                      SizedBox(height: 20),
                      Align(
                        alignment: Alignment.topLeft,
                        child: MyText.HeadingText(
                          "ALL Players",
                        ),
                      ),
                      const SizedBox(height: 25),
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
