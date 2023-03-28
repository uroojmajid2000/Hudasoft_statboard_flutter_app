part of '../profiledetails_screen.dart';

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
                    "Full Name",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              PfofileTextfield(
                hintText: 'Elijah Oliver',
                onChange: (value) {},
                // suffixIcon: "assets/icons/editicon.svg"
                suffixIcon: 'assets/icons/edit.png',
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Username",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              PfofileTextfield(
                hintText: 'Elijah_0591',
                onChange: (value) {},
                // suffixIcon: "assets/icons/editicon.svg"
                suffixIcon: 'assets/icons/edit.png',
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Email Address",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              PfofileTextfield(
                hintText: 'elijah@gmail.com',
                onChange: (value) {},
                // suffixIcon: "assets/icons/editicon.svg"
                suffixIcon: 'assets/icons/edit.png',
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Phone Number",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              PfofileTextfield(
                hintText: '0921510222011',
                onChange: (value) {},
                // suffixIcon: "assets/icons/editicon.svg"
                suffixIcon: 'assets/icons/edit.png',
              ),
              const SizedBox(height: 18),
              Button(
                  child: Text('SAVE'),
                  onPressed: () {
                    Navigate.to(context, ProfileDetailsScreen.id);
                  }),
              const SizedBox(height: 18),
            ]),
          ),
        ));
  }
}
