part of '../teams_details.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final _name = TextEditingController();
  final _sports = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                        'assets/logos/create_teamslogo.svg',
                      ),
                      const SizedBox(height: 35),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText(
                            "Team Name",
                          ),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyTextFieldTeam(
                        controller: _name,
                        hintText: 'Tornado',
                        onChange: (value) {},
                      ),
                      const SizedBox(height: 18),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          MyText.labelText("Sports"),
                        ],
                      ),
                      const SizedBox(height: 13),
                      MyDropdown(
                        items: ['football', 'basketball'],
                        selected: 'football',
                        onChange: (String? value) {
                          print('Selected: $value');
                        },
                      ),
                      const SizedBox(height: 200),
                      Button(
                          child: MyText.buttonText('Create Team'),
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
                      "The team has been created \nsuccessfully.",
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
                          Navigate.next(context, TeamsScreen.id),
                        }
                    // _onSubmit(_onSuccess),
                    ),
              ],
            ),
          ));
    },
  );
}
