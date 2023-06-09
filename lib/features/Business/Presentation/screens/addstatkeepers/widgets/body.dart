part of '../addstatkeepers_screen.dart';

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
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(
              children: [
                const SizedBox(height: 24),
                SvgPicture.asset(
                  'assets/logos/statkeeperslogo.svg',
                ),
                const SizedBox(height: 10),
                Text(
                  "Create Statskeeper Account",
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
                  "Please enter the details to create \nan account of the Statskeepers",
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
                      "Email Address",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'elijaholiver@gmail.com',
                  onChange: (value) {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Phone Number",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: '09321312321',
                  onChange: (value) {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Full Name",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyTextFieldTeam(
                  // controller: _name,
                  hintText: 'Elijah Oliver',
                  onChange: (value) {},
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText.labelText(
                      "Password",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyTextField(
                  // controller: _passwordController,
                  hintText: '  password123',
                  // prefixIcon: 'assets/icons/password_icon.png',
                  obscureText: true,
                  onChange: (value) {},
                ),
                const SizedBox(height: 10),
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
                  items: ['California Stadium', 'other'],
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
                      "Venue",
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                MyDropdown(
                  items: ['California Stadium', 'other'],
                  selected: 'California Stadium',
                  onChange: (String? value) {
                    print('Selected: $value');
                  },
                ),
                const SizedBox(height: 18),
                Button(
                    child: MyText.buttonText('Create Account'),
                    onPressed: () => {
                          CustomModalBottomSheet.show(
                              context: context,
                              message:
                                  "Statskeepers account has been \ncreated successfully.",
                              onPressed: () {
                                Navigate.to(context, StatKeeperScreen.id);
                              })

                          // Navigate.to(context, StatKeeperScreen.id)
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
