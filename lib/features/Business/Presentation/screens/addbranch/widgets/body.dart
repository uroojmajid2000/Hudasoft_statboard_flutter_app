part of '../addbranch_screen.dart';

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
                          color: Color(0xff00B0F0),
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
                          color: Color(0xffEBEBEB),
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
                  "Please enter the branch details",
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
                      "Branch Name",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'California Gym',
                  onChange: (value) {},
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Email Address",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'californiagym@gmail.com',
                  onChange: (value) {},
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Phone Number",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: '095461645',
                  onChange: (value) {},
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Website",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'www.californiagym.com',
                  onChange: (value) {},
                ),
                const SizedBox(height: 13),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Address",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: '12th Street',
                  onChange: (value) {},
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Facebook Link",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'www.facebook.com/californiagym',
                  onChange: (value) {},
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Twitter Link",
                    ),
                  ],
                ),
                const SizedBox(height: 13),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'www.twitter.com/californiagym',
                  onChange: (value) {},
                ),
                const SizedBox(height: 20),
                Button(
                    child: MyText.buttonText('SAVE'),
                    onPressed: () => {
                         Navigate.to(context, BranchDetailsScreen.id)
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
