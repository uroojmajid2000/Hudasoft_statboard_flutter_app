part of '../branchdetails_screen.dart';

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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 5,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff00B0F0),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        height: 5,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                SvgPicture.asset(
                  'assets/icons/homeblue.svg',
                ),
                const SizedBox(height: 10),
                Text(
                  "Branch Details",
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
                  "Please enter the schedule of the venue",
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
                      "Open Days",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['Monday', 'Tuesday'],
                  selected: 'Monday',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Start Time",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['12:00 PM', '01:00 PM'],
                  selected: '12:00 PM',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "End Time",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['09:00 PM', '10:00 PM'],
                  selected: '09:00 PM',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 190),
                Button(
                    child: MyText.buttonText('SAVE'),
                    onPressed: () => {
                          CustomModalBottomSheet.show(
                              context: context,
                              message:
                                  "New branch has been created \nsuccessfully.",
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
