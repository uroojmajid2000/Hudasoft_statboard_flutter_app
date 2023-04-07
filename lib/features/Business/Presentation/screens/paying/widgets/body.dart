part of '../paying_screen.dart';

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

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          SvgPicture.asset(
            'assets/logos/signinscreen_logo.svg',
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText.labelText(
                "Pay with",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              PaymentOptions(text: 'assets/icons/paywithicon.png'),
              SizedBox(
                width: 12,
              ),
              PaymentOptions(text: 'assets/icons/appleicon.png'),
              SizedBox(
                width: 12,
              ),
              PaymentOptions(text: 'assets/icons/p.png'),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText.labelText(
                "Name on Card",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MyTextFieldTeam(
            // controller: _emailController,
            hintText: 'Elijah Oliver',

            onChange: (value) {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText.labelText(
                "Card Number",
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          MyTextFieldTeam(
            // controller: _phonenumberController,
            hintText: '0900 0966 5555 6666',

            onChange: (value) {},
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyText.labelText(
                          "CVV",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextFieldTeam(
                      // controller: _phonenumberController,
                      hintText: '986',

                      onChange: (value) {},
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        MyText.labelText(
                          "Expiry Date",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MyTextFieldTeam(
                      // controller: _phonenumberController,
                      hintText: '05/22',

                      onChange: (value) {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 110),
          Button(
              child: Text('Let’s Explore'),
              onPressed: () {
                Navigate.to(context, WelcomeBusinessScreen.id);
              })
        ],
      ),
    );
  }
}
