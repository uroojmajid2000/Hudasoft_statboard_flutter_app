part of '../subscription_screen.dart';

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

    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        MyText.businesssubscription(
          "Cancel anytime",
        ),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Container(
            width: double.infinity,
            height: 400,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 10,
                  offset: Offset(0, 0),
                ),
              ],
              color: Colors.white,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 136.78,
                  height: 37.76,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60),
                    color: Color(0xff00b0f0),
                  ),
                  child: Center(
                    child: Text(
                      "PREMIUM",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w700,
                        letterSpacing: 2.40,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "\$50/mth",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xff0f1728),
                    fontSize: 30,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                MyText.businesssubscription(
                  "Billed monthly",
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(),
                SizedBox(
                  height: 10,
                ),
                PreniumDetails(
                  text: "Access to all basic features",
                ),
                SizedBox(
                  height: 9,
                ),
                PreniumDetails(
                  text: "Lorem ipsum lorem ipsum",
                ),
                SizedBox(
                  height: 9,
                ),
                PreniumDetails(
                  text: "Lorem Ipsum",
                ),
                SizedBox(
                  height: 9,
                ),
                PreniumDetails(
                  text: "Lorem Ipsum",
                ),
                SizedBox(
                  height: 9,
                ),
                PreniumDetails(
                  text: "Lorem Ipsum",
                ),
                SizedBox(
                  height: 9,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 90,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Button(
              child: Text('Buy Subscription'),
              onPressed: () {
                Navigate.to(context, PayingScreen.id);
              }),
        )
      ],
    );
  }
}
