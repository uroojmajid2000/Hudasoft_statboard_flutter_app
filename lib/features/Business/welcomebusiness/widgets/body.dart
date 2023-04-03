part of '../welcomebusiness_screen.dart';

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
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/welcome.gif'),
              // fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            // height: size.height * 0.8,
            child: Center(
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
                    "Welcome to Statboard",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'You will get to enjoy:',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xff454545),
                      fontSize: 17,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 60),
                  Content(
                      text:
                          'Free access to all the venues and branches anywhere'),
                  SizedBox(height: 10),
                  Content(text: 'Join any events and play tournaments easily'),
                  SizedBox(height: 10),
                  Content(
                      text:
                          'More than 20+ Matches to play and enjoy with friends'),
                  SizedBox(height: 10),
                  Content(
                      text:
                          'Invite your friends to Team and play Matches with them '),
                  SizedBox(height: 10),
                  Content(text: 'Get contacted and hired by the hunters'),
                  SizedBox(height: 170),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 14),
                    child: Button(
                        child: MyText.buttonText('Continue'),
                        onPressed: () => {
                              // Navigate.next(context, SportsInterstScreen.id),
                            }),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
