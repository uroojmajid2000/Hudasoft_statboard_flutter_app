part of '../venuesprofile_screen.dart';

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
                      // 'assets/images/cover.png',
                      'assets/images/groundimage.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 170, // adjust this value to move the avatar higher up
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          // 'assets/images/avatarimage.png',
                          'assets/images/soccerlogo.png',
                        ),
                        radius: 45,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "California Stadium",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 17,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      MyText.labelText("15+"),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Venues",
                      )
                    ],
                  ),
                  Column(
                    children: [
                      MyText.labelText('50+'),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Matches Offered",
                      )
                    ],
                  ),
                  Column(
                    children: [
                      MyText.labelText('180+'),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Matches Played",
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Button(
                  child: Text('Edit'),
                  onPressed: () {
                    Navigate.to(context, VenuesEditProfileScreen.id);
                  }),
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Filters(
                    text: 'Venues',
                    isSelected: _eventsSelected,
                    onChanged: (value) {
                      setState(() {
                        _eventsSelected = value;
                        _gallerySelected = false;
                      });
                    },
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Filters(
                    text: 'Gallery',
                    isSelected: _gallerySelected,
                    onChanged: (value) {
                      setState(() {
                        _gallerySelected = value;
                        _eventsSelected = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            if (_eventsSelected)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: VenuesProfilelist(),
              ),
            if (_gallerySelected)
              Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigate.to(context, BImageDetailsScreen.id);
                      },
                      child: GalleryGrid()),
                ],
              ),
          ]),
        ));
  }
}
