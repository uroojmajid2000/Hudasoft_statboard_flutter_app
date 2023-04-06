part of '../venueseditprofile_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _eventsSelected = true;
  bool _gallerySelected = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 260, // specify height
              child: Stack(
                children: [
                  SizedBox(
                    height: 230, // specify height
                    width: double.infinity, // take up all available width
                    child: Image.asset(
                      'assets/images/groundimage.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    right: 18,
                    top: 185,
                    child: Center(
                      child: CircleAvatar(
                        backgroundColor: Color(0xff00b0f0),
                        radius: 15,

                        // child: SvgPicture.asset('assets/icons/cameraicon.svg'),
                        child: SvgPicture.asset('assets/icons/cameraicon.svg'),
                      ),
                    ), //CircleAvatar
                  ),
                  Positioned(
                    left: 150,
                    top: 170, // adjust this value to move the avatar higher up
                    child: Stack(children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(
                          // 'assets/images/avatarimage.png',
                          'assets/images/soccerlogo.png',
                        ),
                        radius: 45,
                      ),
                      Positioned(
                        left: 30,
                        top: 28,
                        child: Center(
                          child: CircleAvatar(
                            backgroundColor: Color(0xff00b0f0),
                            radius: 15,
                            child:
                                SvgPicture.asset('assets/icons/cameraicon.svg'),
                          ),
                        ), //CircleAvatar
                      ),
                    ]),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Branch Name",
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: 'California Gym',
                    onChange: (value) {},
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Email Address",
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: 'californiagym@gmail.com',
                    onChange: (value) {},
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Phone Number",
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: '095461645',
                    onChange: (value) {},
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Website",
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: 'www.californiagym.com',
                    onChange: (value) {},
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Twitter Link",
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: 'www.twitter.com/californiagym',
                    onChange: (value) {},
                  ),
                  const SizedBox(height: 13),
                  Button(
                      child: MyText.buttonText('SAVE'),
                      onPressed: () =>
                          {Navigate.to(context, VenuesProfileScreen.id)}),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ]),
        ));
  }
}
