part of '../editprofile_screen.dart';

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
              height: 330, // specify height
              child: Stack(
                children: [
                  SizedBox(
                    height: 300, // specify height
                    width: double.infinity, // take up all available width
                    child: Image.asset(
                      'assets/images/cover.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 230, // adjust this value to move the avatar higher up
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 50,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/profileicon.svg',
                text: "Profile Details",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/securityicon.svg',
                text: "Security",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/permission.svg',
                text: "Permissions",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/bellicon.svg',
                text: "Notifications",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/intersticon.svg',
                text: "Interests",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/settingicon.svg',
                text: "Settings",
              ),
            ),
            SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/signouticon.svg',
                text: "Sign Out",
              ),
            ),
            SizedBox(
              height: 6,
            ),
          ]),
        ));
  }
}
