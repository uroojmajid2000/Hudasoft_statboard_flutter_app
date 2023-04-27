part of '../signup_username_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();
  final _phonenumberController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
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
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () => Navigator.pop(context),
                            child: SvgPicture.asset(
                              'assets/icons/backicon.svg',
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Player Sign Up",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff00B0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 100,
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff00B0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 100,
                            height: 5,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xffEBEBEB),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 100,
                            height: 5,
                          ),
                        ],
                      ),
                      const SizedBox(height: 28),
                      Text(
                        'Please enter full name',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 40),
                      MyTextField(
                        controller: _emailController,
                        hintText: 'Enter Name',
                        prefixIcon: 'assets/icons/emailperson_icon.png',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 18),
                      MySearchBar(
                        controller: _phonenumberController,
                        hintText: 'Re-enter Name',
                        prefixIcon: 'assets/icons/emailperson_icon.png',
                        suffixIcon: 'assets/icons/tick.png',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 55),
                      Button(
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () => {
                                Navigate.to(context, SignupPasswordScreen.id),
                              }),
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
