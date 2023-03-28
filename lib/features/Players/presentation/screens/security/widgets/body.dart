part of '../security_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Password",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              GestureDetector(
                // onTap: () => Navigate.to(context, SecurityPasswordScreen.id),
                child: PfofileTextfield(
                  hintText: '***************',
                  onChange: (value) {},
                  // suffixIcon: "assets/icons/editicon.svg"
                  suffixIcon: 'assets/icons/edit.png',
                ),
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Delete Account",
                    style: TextStyle(
                      color: Color(0xffef4c53),
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              )
            ]),
          ),
        ));
  }
}
