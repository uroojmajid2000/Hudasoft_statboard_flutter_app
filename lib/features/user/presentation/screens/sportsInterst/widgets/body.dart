part of '../sportsinterst_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: SafeArea(
        child: SizedBox(
          // height: size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                SvgPicture.asset(
                  'assets/logos/sportinterstlogo.svg',
                ),
                const SizedBox(height: 25),
                Text(
                  "Sports Interests",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'Please select your sports interests and preferred locations so that you can be notified of upcoming events',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Sports Interests",
                    ),
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
                SizedBox(height: 13),
                Row(
                  children: [
                    Tags(
                      text: "Football",
                    ),
                    SizedBox(width: 5),
                    Tags(
                      text: "Basketball",
                    ),
                  ],
                ),
                const SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Location",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'Enter ZIP Code',
                  onChange: (value) {},
                ),
                const SizedBox(height: 125),
                Button(
                    child: MyText.buttonText('Continue'),
                    onPressed: () => {
                          Navigate.next(context, OverviewScreen.id),
                        }),
                const SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
