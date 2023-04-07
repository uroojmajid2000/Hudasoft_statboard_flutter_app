part of '../addvenue_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(height: 25),
                SvgPicture.asset(
                  'assets/icons/homeblue.svg',
                ),
                const SizedBox(height: 10),
                Text(
                  "Venue Details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  "Please enter the venue details",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff454545),
                    fontSize: 16,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 18),
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
                  hintText: 'Court 2',
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
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['California Stadium', 'Stadium'],
                  selected: 'California Stadium',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Statskeeper",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['Michael John', 'Robert'],
                  selected: 'Michael John',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Activities",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['Football', 'Basketball'],
                  selected: 'Football',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 95),
                Button(
                    child: MyText.buttonText('SAVE'),
                    onPressed: () => {
                          CustomModalBottomSheet.show(
                              context: context,
                              message:
                                  "New Venue has been created \nsuccessfully.",
                              onPressed: () {
                                Navigate.to(context, VenuesScreen.id);
                              })
                        }),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
