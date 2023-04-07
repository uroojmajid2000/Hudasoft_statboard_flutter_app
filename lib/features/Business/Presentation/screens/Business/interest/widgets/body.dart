part of '../interst_screen.dart';

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
                  height: 30,
                ),
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
                const SizedBox(height: 24),
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
                const SizedBox(height: 320),
                Button(
                    child: MyText.buttonText('SAVE'),
                    onPressed: () =>
                        {Navigate.to(context, EditProfileScreen.id)}),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
