part of '../forgetpassword_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

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
                          SvgPicture.asset(
                            'assets/icons/backicon.svg',
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SvgPicture.asset(
                        'assets/logos/forgetpassword_logo.svg',
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "Password Recovery",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Please enter email or phone number to recover your password',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 50),
                      MyTextField(
                        controller: _emailController,
                        hintText: 'statboarduser@gmail.com',
                        prefixIcon: 'assets/icons/emailperson_icon.png',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 30),
                      Button(
                          child: Text(
                            'Send Verification Code',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () => {
                                Navigate.next(
                                    context, PasswordRecoveryScreen.id),
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
