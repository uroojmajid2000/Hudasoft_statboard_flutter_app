part of '../venuesedit_screen.dart';

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
          height: size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Venue Name",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'Court 1',
                  onChange: (value) {},
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Branch",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyDropdown(
                  items: ['California Stadium', 'other'],
                  selected: 'California Stadium',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Activity",
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
                SizedBox(height: 17),
                Row(
                  children: [
                    Tags(
                      text: "Football",
                    ),
                    SizedBox(width: 8),
                    Tags(
                      text: "Basketball",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Statskeeper",
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/michel.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/robert.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/michel.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundColor: kPrimaryColor,
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 25),
                      ),
                      radius: 18,
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Players",
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/michel.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/robert.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/michel.png',
                      ),
                      radius: 18,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Text(
                      "View All",
                      style: TextStyle(
                        color: Color(0xff00b0f0),
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 70),
                Button(
                    child: MyText.buttonText('SAVE'),
                    onPressed: () =>
                        {Navigate.to(context, VenuesProfileScreen.id)}),
                // const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
