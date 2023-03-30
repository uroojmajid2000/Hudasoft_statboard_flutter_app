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
              height: 260, // specify height
              child: Stack(
                children: [
                  SizedBox(
                    height: 230, // specify height
                    width: double.infinity, // take up all available width
                    child: Image.asset(
                      'assets/images/cover.png',
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
                          'assets/images/avatarimage.png',
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
              child: GestureDetector(
                onTap: () => Navigate.to(context, ProfileDetailsScreen.id),
                child: EditProfileContaoner(
                  icon: 'assets/icons/profileicon.svg',
                  text: "Profile Details",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GestureDetector(
                onTap: () => Navigate.to(context, SecurityScreen.id),
                child: EditProfileContaoner(
                  icon: 'assets/icons/securityicon.svg',
                  text: "Security",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GestureDetector(
                onTap: () => Navigate.to(context, PermissionsScreen.id),
                child: EditProfileContaoner(
                  icon: 'assets/icons/permission.svg',
                  text: "Permissions",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GestureDetector(
                onTap: () =>
                    Navigate.to(context, NotificationEditProfileScreen.id),
                child: EditProfileContaoner(
                  icon: 'assets/icons/bellicon.svg',
                  text: "Notifications",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: GestureDetector(
                onTap: () => Navigate.to(context, InterstScreen.id),
                child: EditProfileContaoner(
                  icon: 'assets/icons/intersticon.svg',
                  text: "Interests",
                ),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/settingicon.svg',
                text: "Settings",
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: EditProfileContaoner(
                icon: 'assets/icons/signouticon.svg',
                text: "Sign Out",
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ]),
        ));
  }
}
