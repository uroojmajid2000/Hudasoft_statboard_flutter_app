part of '../signin_screen.dart';

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
                        height: 50,
                      ),
                      SvgPicture.asset(
                        'assets/logos/signinscreen_logo.svg',
                      ),
                      const SizedBox(height: 25),
                      Text(
                        "Sign In",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText("Email Address or Phone Number"),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyTextField(
                        controller: _emailController,
                        hintText: 'statboarduser@gmail.com',
                        prefixIcon: 'assets/icons/emailperson_icon.png',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText("Password"),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyTextField(
                        controller: _passwordController,
                        hintText: 'password123',
                        prefixIcon: 'assets/icons/password_icon.png',
                        obscureText: true,
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 13),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                              onTap: () =>
                                  Navigate.to(context, ForgetpasswordScreen.id),
                              child: MyText.forgetPassword("Forgot Password?")),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Button(
                          child: MyText.buttonText('Sign In'),
                          onPressed: () => {
                                Navigate.next(context, OverviewScreen.id),
                              }),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          MyText.labelText("Sign In With Face ID"),
                          SizedBox(
                            width: 10,
                          ),
                          SvgPicture.asset('assets/icons/face_id.svg')
                        ],
                      ),
                      const SizedBox(height: 20),
                      OutlineButtonCustom(
                          onPressed: () => {
                                CustomCreateAccountModal.show(
                                  context: context,
                                  onPressed: () {
                                    Navigate.to(context, SigninScreen.id);
                                  },
                                )
                              },
                          child: Text(
                            "Create Account",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xff00b0f0),
                              fontSize: 17,
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.w600,
                            ),
                          )),
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
