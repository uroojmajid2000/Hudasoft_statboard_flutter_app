part of '../signupverification_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _digit1Controller = TextEditingController();
  final _digit2Controller = TextEditingController();
  final _digit3Controller = TextEditingController();
  final _digit4Controller = TextEditingController();
  final _digit5Controller = TextEditingController();
  final _digit6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: SafeArea(
          child: SizedBox(
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
                              color: Color(0xff00B0F0),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            width: 100,
                            height: 5,
                          ),
                        ],
                      ),
                      const SizedBox(height: 25),
                      Text(
                        'Please enter the 6 digit verification code sent to your email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff454545),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 150),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          OtpTextField(
                            controller: _digit1Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 9),
                          OtpTextField(
                            controller: _digit2Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 9),
                          OtpTextField(
                            controller: _digit3Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 9),
                          OtpTextField(
                            controller: _digit4Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 9),
                          OtpTextField(
                            controller: _digit5Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 9),
                          OtpTextField(
                            controller: _digit6Controller,
                            hintText: '',
                            length: 1,
                            required: false,
                            textCenter: true,
                            keyboardType: TextInputType.number,
                            onChange: (value) {
                              if (value.length == 1) {
                                FocusScope.of(context).nextFocus();
                                //     // onSubmit(onSuccess);
                              }
                            },
                          ),
                          const SizedBox(width: 5),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Text(
                        "Resend Code",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xff00B0F0),
                          fontSize: 16,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(height: 30),
                      Button(
                          child: MyText.buttonText('Verify'),
                          onPressed: () => {
                                // Navigate.to(context, NewPasswordScreen.id),
                                CustomModalBottomSheet.show(
                                  context: context,
                                  message:
                                      'Your account has been verified \nsuccessfully.',
                                  onPressed: () {
                                    // Do something when the "Continue" button is pressed
                                    Navigate.to(context, WelcomeScreen.id);
                                  },
                                )
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
