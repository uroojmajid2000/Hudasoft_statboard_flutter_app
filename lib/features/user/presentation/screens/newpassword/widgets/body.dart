part of '../newpassword_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _passwordController = TextEditingController();

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
                        'Please enter a new password',
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
                        controller: _passwordController,
                        hintText: 'password123',
                        prefixIcon: 'assets/icons/password_icon.png',
                        obscureText: true,
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 30),
                      Button(
                          child: MyText.buttonText('Continue'),
                          onPressed: () => {_settingModalBottomSheet(context)}),
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

void _settingModalBottomSheet(context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20.0),
        topRight: Radius.circular(20.0),
      ),
    ),
    context: context,
    builder: (BuildContext bc) {
      return Container(
          height: 280,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color(0xff00a22d),
                    shape: BoxShape.circle,
                  ),
                  child:
                      //  SvgPicture.asset(
                      //   'assets/icons/alert_dialog_check.svg',

                      // ),

                      const Icon(
                    Icons.check,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Password has been changed \nsuccessfully.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Button(
                    child: Text(
                      'Continue',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    onPressed: () => {
                          Navigate.to(context, SigninScreen.id),
                        }
                    // _onSubmit(_onSuccess),
                    ),
              ],
            ),
          ));
    },
  );
}
